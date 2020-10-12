;###############################################################################
;#                                                                             #
;# Copyright (C) 2020 by Sylwester Wysocki <sw143@wp.pl>                       #
;#                                                                             #
;# Permission to use, copy, modify, and/or distribute this software for any    #
;# purpose with or without fee is hereby granted.                              #
;#                                                                             #
;# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES    #
;# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF            #
;# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR     #
;# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES      #
;# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN       #
;# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR  #
;# IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.                 #
;#                                                                             #
;###############################################################################

; Based on code from posts:
; - https://stackoverflow.com/a/32820799
; - https://hero.handmade.network/forums/code-discussion/t/129-howto_-_building_without_import_libraries

; Created on: 2020-10-12

; Code shows the example how to import external modules on-the-fly *WITHOUT*
; import table.
;
; Below code does:
;   1. Find the base of KERNEL32.DLL via Thread Environment Block (TEB),
;   2. find export table at KERNEL32.DLL module space (kernel32!ExportTable),
;   3. find the entry point of GetProcAddress in kernel32!ExportTable,
;   4. use GetProcAddress to find entry of kernel32!LoadLibraryA routine,
;   5. use LoadLibraryA and GetProcAddress to import user32!MessageBox.

; Possible improvement:
; - match full '%WINDIR%\SYSTEM32\KERNEL32.DLL' path for security (?)
;   (we search for kernel32.dll string only).

; Limitations:
; - Code works on AMD64 (x86-64) only - GS register is unused on 32-bit OS.
;
; - To get it work on 32-bit OS, the kernel32 base may be obtain via return
;   address in the main entry point (instead of PEB):
;   https://stackoverflow.com/a/32820799

; Build by command:
; fasm pe64-no-imports.asm

format PE64 console 5.0
entry start

section '.text' readable executable

; ------------------------------------------------------------------------------
;       Read only data in code section, move to new section if you want
; ------------------------------------------------------------------------------

__literals:

  .Kernel32     db 'kernel32.dll', 0
  .LoadLibraryA db 'LoadLibraryA', 0
  .User32       db 'user32.dll'  , 0
  .MessageBoxA  db 'MessageBoxA' , 0

  .messageText    db '', 0;This executable has no imports table', 0
  .messageCaption db '', 0;PE32+ without imports table', 0

; ------------------------------------------------------------------------------
;                                 Entry point
; ------------------------------------------------------------------------------

start:

    sub   rsp, 40

    ; Map literals base to rbp to avoid usage
    ; of rip based addresses with 32-bit displacements
    ; ------------------------------------------------

    lea   rbp, [__literals]

    __imp_name_Kernel32     EQU rbp + __literals.Kernel32     - __literals
    __imp_name_LoadLibraryA EQU rbp + __literals.LoadLibraryA - __literals
    __imp_name_User32       EQU rbp + __literals.User32       - __literals
    __imp_name_MessageBoxA  EQU rbp + __literals.MessageBoxA  - __literals

    messageText    EQU rbp + __literals.messageText    - __literals
    messageCaption EQU rbp + __literals.messageCaption - __literals

    ; ##########################################################################
    ; #
    ; #              Step 1: Find KERNEL32.DLL base via PEB
    ; #
    ; ##########################################################################

    ; --------------------------------------------------------------------------
    ; Fetch TEB.PEB.LoaderData.Modules[] array.
    ; --------------------------------------------------------------------------

    mov   rbx, qword [gs:0x30]    ; rbx = TEB = Thread Environment Block
    mov   rbx, qword [rbx + 0x60] ; rbx = TEB.PEB = Process Environment Block
    mov   rbx, qword [rbx + 0x18] ; rbx = TEB.PEB.LoaderData
    mov   rbx, qword [rbx + 0x20] ; rbx = TEB.PEB.LoaderData.Modules

    ; --------------------------------------------------------------------------
    ; Find base of kernel32.dll module.
    ; --------------------------------------------------------------------------

    ; One loader entry is:
    ;   LIST_ENTRY LinkedList;       ; 0  8
    ;   LIST_ENTRY UnusedList;       ; 8  8
    ;   PVOID BaseAddress;           ; 16 8
    ;   PVOID Reserved2[1];          ; 24 8
    ;   PVOID DllBase;               ; 32 8
    ;   PVOID EntryPoint;            ; 40 8
    ;   PVOID Reserved3;             ; 48 8
    ;   USHORT DllNameLength;        ; 56 2
    ;   USHORT DllNameMaximumLength; ; 58 2
    ;   USHORT Reserver4[2]          ; 60 4
    ;   PWSTR  DllNameBuffer;        ; 64 8

.scanNextLdrModule:

    mov   rbx, [rbx]              ; rbx = next module in linked list

    ; Fetch next DllName
    ; -------------------

    movzx eax, word [rbx + 56]    ; rax = DllNameLength (int16)
    add   rax, qword [rbx + 64]   ; rax = DllNameBuffer + DllNameLength =
                                  ;     = the end of DllNameLength buffer

    ; --------------------------------------------------------------------------
    ; Match KERNEL32.DLL from backward, because
    ; entries contain full module paths e.g.
    ; C:\WINDOWS\SYSTEM32\KERNEL32.DLL
    ;                     ^^^^^^^^^^^^
    ;                   We match this part only
    ; --------------------------------------------------------------------------

    push  11                      ;
    pop   rcx                     ; rcx = 12 = len('kernel32.dll') in chars
    sub   rax, 24                 ; rax = DllNameLength - len('kernel32.dll')

.compareLoop:

    mov   dl, [rax + rcx*2]       ; dl = fetch next char
    or    dl, 32                  ; dl = lowercase
    cmp   dl, [__imp_name_Kernel32 + rcx]
                                  ; is characters match?

    jne   .scanNextLdrModule      ; go to next module if not matched
    loop  .compareLoop            ; compare up to 24 characters

.kernel32_found:

    mov   rbx, [rbx + 32]         ; rbx = base of kernel32 module

    ; ##########################################################################
    ; #
    ; #          Step 2: Find ExportTable in KERNEL32.DLL module
    ; #
    ; ##########################################################################

    mov   eax, [rbx + 60]         ; rax = offset of the PE header in file (RVA)

    add   eax, 24 + 112           ; rax = addres of PE optional in file (RVA)
                                  ;     + ExportTable (112)

    mov   edx, [rbx + rax]        ; rdx = offset of export table in file (RVA)

    add   rdx, rbx                ; rdx = BASE + RVA(exportTable) =
                                  ;     = address of export table in memory

    ; ##########################################################################
    ; #
    ; #         Step 3: Find GetProcAddress in kernel32!ExportTable
    ; #
    ; ##########################################################################

    mov   eax, [rdx + 32]         ; rax = RVA(NamePointerTable)
    lea   rsi, [rbx + rax]        ; rsi = BASE + RVA(NamePointerTable)
                                  ;     = address of NamePointerTable in memory

    push  -1                      ;
    pop   rcx                     ; rcx = procIdx = index in export table

.scanNextProc:

    ; Fetch next proc entry
    ; ---------------------

    inc   rcx                     ; rcx = procIdx + 1 = go to next proc entry
    mov   eax, [rsi + rcx*4]      ; eax = RVA(NamePointerTable[procIdx])

    add   rax, rbx                ; rax = BASE + RVA(NamePointerTable[procIdx])
                                  ;     = address of NamePointerTable[procIdx]
                                  ;       in memory

    ; Match 'GetProcAddress\0'
    ; -----------------------

    mov   rdi, 'GetProcA'         ; Compare first 8 bytes
    cmp   rdi, qword [rax]        ;
    jnz   .scanNextProc           ;

    mov   rdi, 'Address'          ; Compare last 8 bytes including zero
    cmp   rdi, qword [rax + 7]    ; terminator. 7-th byte is compared twice
    jnz   .scanNextProc           ; to make code shorter.

    ; --------------------------------------------------------------------------
    ; Get address of GetProcAddress function from kernel32.
    ; At this place:
    ;   rbx = kernel32 base (HMODULE),
    ;   rsi = export table of kernel32,
    ;   rcx = procIdx = index of GetProcAddress in exports table.
    ; --------------------------------------------------------------------------

    ; Fetch GetProcAddress ordinal
    ; ----------------------------

    mov   eax, [rdx + 36]         ; edx = RVA(ExportTable.OrdinalTableRVA)
    add   rax, rbx                ; rax = ExportTable.OrdinalTableRVA

    movzx ecx, word [rax + rcx*2] ; ecx = ExportTable.OrdinalTableRVA[procIdx]
                                  ;     = GetProcAddress ordinal number

    ; Fetch GetProcAddress entry point
    ; --------------------------------

    mov   eax, [rdx + 28]         ; edx = RVA(ExportTable.ExportAddressTableRVA)
    add   rax, rbx                ; rax = ExportTable.ExportAddressTableRVA

    mov   eax, [rax + rcx*4]      ; eax = RVA(GetProcAddress)
    add   rax, rbx                ; rax = GetProcAddress entry point

    mov   rsi, rax

    ; ##########################################################################
    ; #
    ; #   Step 4: Use GetProcAddress to find entry of LoadLibraryA routine.
    ; #
    ; ##########################################################################

    ; ... = GetProcAddress(kernel32, 'LoadLibraryA')
    ; ----------------------------------------------

    mov   rcx, rbx                        ; rcx = moduleBase = kernel32
    lea   rdx, [__imp_name_LoadLibraryA]  ; rdx = 'LoadLibraryA'
    call  rsi                             ; rax = GetProcAddress(kernel32,
                                          ;                     'LoadLibrary')

    ; ##########################################################################
    ; #
    ; #   Step 5: Use GetProcAddress to find entry of LoadLibraryA routine.
    ; #
    ; ##########################################################################

    ; Import user32.dll
    ; ... = LoadLibraryA('user32.dll')
    ; --------------------------------

    lea   rcx, [__imp_name_User32]        ; rcx = 'user32.dll'
    call  rax                             ; rax = LoadLibrary('user32.dll')

    ; Import user32:MessageBoxA routine
    ; ... = GetProcAddress(user32, 'MessageBoxA')
    ; -------------------------------------------

    mov   rcx, rax                        ; rcx = moduleBase = user32
    lea   rdx, [__imp_name_MessageBoxA]   ; rdx = 'MessageBoxA'
    call  rsi                             ; rax = GetProcAddress(kernel32,
                                          ;                     'MessageBoxA')

    ; Call MessageBoxA(NULL, msg, caption, 0)
    ; ---------------------------------------

    xor   ecx, ecx                        ; rcx = hWnd = NULL = desktop
    lea   rdx, [messageText]              ; rdx = message text
    lea   r8,  [messageCaption]           ; r8  = message caption
    xor   r9d, r9d                        ; r9  = uType = 0 = MB_OK
    call  rax                             ; rax = result of MessageBoxA(...)

    ; Clean stack frame
    ; -----------------

.error:
.done:

    add   rsp, 40
    ret
