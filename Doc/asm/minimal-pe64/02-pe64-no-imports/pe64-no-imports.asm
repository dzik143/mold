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

; Created at: 2020-10-12

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
; - Case insensitive match for 'KERNEL32.DLL' string (?),
; - match full path '%WINDIR%\SYSTEM32\KERNEL32.DLL' for security (?).

;
; Limitations:
; - Code works on AMD64 (x86-64) only - GS register is unused on 32-bit OS.
;
; - To get it work on 32-bit OS, the kernel32 base may be obtain via return
;   address in the main entry point: https://stackoverflow.com/a/32820799

; Build by command:
; fasm pe64-no-imports.asm

format PE64 console 5.0
entry start

section '.text' readable executable

; ------------------------------------------------------------------------------
;       Read only data in code section, move to new section if you want
; ------------------------------------------------------------------------------

  _imp_name_Beep         db 'Beep', 0
  _imp_name_LoadLibraryA db 'LoadLibraryA', 0
  _imp_name_MessageBoxA  db 'MessageBoxA', 0
  _imp_name_user32       db 'user32.dll', 0

  messageText    db 'This executable has no imports table', 0
  messageCaption db 'PE32+ without imports table', 0

  __imp_name16_kernel32:
    dw 'K','E','R','N','E','L','3','2','.','D','L','L'
  __imp_name16_kernel32_end:

; ------------------------------------------------------------------------------
;                                 Entry point
; ------------------------------------------------------------------------------

start:

    ; Init stack frame
    ; ----------------

    push  rbp
    mov   rbp, rsp

    push  rbx
    push  rsi
    sub   rsp, 80

    ; We store imported addresses on the stack.
    ; Move where you want if needed.
    ; ----------------------------------------

    __imp_kernel32       EQU rbp - 8 - 8 * 1 ; 8 bytes
    __imp_user32         EQU rbp - 8 - 8 * 2 ; 8 bytes
    __imp_GetProcAddress EQU rbp - 8 - 8 * 3 ; 8 bytes
    __imp_LoadLibraryA   EQU rbp - 8 - 8 * 4 ; 8 bytes
    __imp_MessageBoxA    EQU rbp - 8 - 8 * 5 ; 8 bytes

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

    mov   eax, [rbx + 56]         ;  ax = DllNameLength (int16)
    and   eax, 0xff               ; rax = DllNameLength (int64)

    add   rax, qword [rbx + 64]   ; rax = DllNameBuffer + DllNameLength =
                                  ;     = the end of DllNameLength buffer

    ; Match KERNEL32.DLL from backward, because
    ; entries contain full module paths e.g.
    ; C:\WINDOWS\SYSTEM32\KERNEL32.DLL
    ;                     ^^^^^^^^^^^^
    ;                   We match this part only
    ; -----------------------------------------

    mov   rcx, qword [rax - 8]
    cmp   rcx, qword [__imp_name16_kernel32_end - 8]
    jnz   .scanNextLdrModule

    mov   rcx, qword [rax - 16]
    cmp   rcx, qword [__imp_name16_kernel32_end - 16]
    jnz   .scanNextLdrModule

    mov   rcx, qword [rax - 24]
    cmp   rcx, qword [__imp_name16_kernel32_end - 24]
    jnz   .scanNextLdrModule

.kernel32_found:

    mov   rbx, [rbx + 32]         ; rbx = base of kernel32 module

    ; ##########################################################################
    ; #
    ; #          Step 2: Find ExportTable in KERNEL32.DLL module
    ; #
    ; ##########################################################################

    ; Go to PE header
    ; ---------------

    mov   eax, [rbx + 60]         ; rax = offset of the PE header in file (RVA)

    ;
    ; Go to PE optional header
    ; ------------------------

    add   eax, 24                 ; rax = addres of PE optional in file (RVA)

    ; Go to export table
    ; ------------------

    mov   eax, [rbx + rax + 112]  ; rax = offset of export table in file (RVA)

    lea   rdx, [rbx + rax]        ; rdx = BASE + RVA(exportTable) =
                                  ;     = address of export table in memory

    ; ##########################################################################
    ; #
    ; #         Step 3: Find GetProcAddress in kernel32!ExportTable
    ; #
    ; ##########################################################################

    mov   eax, [rdx + 32]         ; rax = RVA(NamePointerTable)
    lea   rsi, [rbx + rax]        ; rsi = BASE + RVA(NamePointerTable)
                                  ;     = address of NamePointerTable in memory

    mov   rcx, -1                 ; rcx = procIdx = index in export table

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

    cmp   dword [rax], 'GetP'
    jnz   .scanNextProc

    cmp   dword [rax + 4], 'rocA'
    jnz   .scanNextProc

    cmp   dword [rax + 8], 'ddre'
    jnz   .scanNextProc

    cmp   word  [rax + 12], 'ss'
    jnz   .scanNextProc

    cmp   byte  [rax + 14], 0
    jnz   .scanNextProc

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

    mov   qword [__imp_kernel32], rbx
    mov   qword [__imp_GetProcAddress], rax

    ; ##########################################################################
    ; #
    ; #   Step 4: Use GetProcAddress to find entry of LoadLibraryA routine.
    ; #
    ; ##########################################################################

    ; ... = GetProcAddress(kernel32, 'LoadLibraryA')
    ; ----------------------------------------------

    mov   rcx, rbx                        ; rcx = moduleBase = kernel32
    lea   rdx, qword [_imp_name_LoadLibraryA]
                                          ; rdx = 'LoadLibraryA'
    call  qword [__imp_GetProcAddress]    ; rax = GetProcAddress(...)
    mov   qword [__imp_LoadLibraryA], rax ; Save pointer to LoadLibraryA

    ; ##########################################################################
    ; #
    ; #   Step 5: Use GetProcAddress to find entry of LoadLibraryA routine.
    ; #
    ; ##########################################################################

    ; Import user32.dll
    ; ... = LoadLibraryA('user32.dll')
    ; --------------------------------

    lea   rcx, qword [_imp_name_user32]   ; rcx = 'user32.dll'
    call  qword [__imp_LoadLibraryA]      ; rax = LoadLibraryA(...)
    mov   qword [__imp_user32], rax       ; Save pointer to user32.dll

    ; Import user32:MessageBoxA routine
    ; ... = GetProcAddress(user32, 'MessageBoxA')
    ; -------------------------------------------

    mov   rcx, rax                        ; rcx = moduleBase = user32
    lea   rdx, [_imp_name_MessageBoxA]    ; rdx = 'MessageBoxA'
    call  qword [__imp_GetProcAddress]    ; rax = GetProcAddress(...)
    mov   qword [__imp_MessageBoxA], rax  ; Save pointer to MessageBoxA

    ; Call MessageBoxA(NULL, msg, caption, 0)
    ; ---------------------------------------

    xor   ecx, ecx                        ; rcx = hWnd = NULL = desktop
    lea   rdx, [messageText]              ; rdx = message text
    lea   r8,  [messageCaption]           ; r8  = message caption
    xor   r9d, r9d                        ; r9  = uType = 0 = MB_OK
    call  qword [__imp_MessageBoxA]       ; rax = MessageBoxA(...)

    ; Clean stack frame
    ; -----------------

.error:
.done:

    add   rsp, 80
    pop   rsi
    pop   rbx

    pop   rbp
    ret
