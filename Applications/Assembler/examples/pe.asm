;###############################################################################
;#                                                                             #
;# This file is part of Mold project.                                          #
;# Copyright (C) 2015, 2019 Sylwester Wysocki (sw143@wp.pl)                    #
;#                                                                             #
;# This program is free software: you can redistribute it and/or modify        #
;# it under the terms of the GNU General Public License as published by        #
;# the Free Software Foundation, either version 3 of the License, or           #
;# (at your option) any later version.                                         #
;#                                                                             #
;# This program is distributed in the hope that it will be useful,             #
;# but WITHOUT ANY WARRANTY; without even the implied warranty of              #
;# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
;# GNU General Public License for more details.                                #
;#                                                                             #
;# You should have received a copy of the GNU General Public License           #
;# along with this program. If not, see <http://www.gnu.org/licenses/>         #
;#                                                                             #
;###############################################################################

use64

NUMBER_OF_SECTIONS       EQU 2
IMAGE_BASE               EQU 0x400000
IMAGE_FILE_MACHINE_AMD64 EQU 0x8664

IMAGE_SUBSYSTEM_WINDOWS_GUI EQU 2 ; For GUI application
IMAGE_SUBSYSTEM_WINDOWS_CUI EQU 3 ; For console application

IMAGE_SCN_CNT_CODE             EQU 0x000000020
IMAGE_SCN_CNT_INITIALIZED_DATA EQU 0x000000040
IMAGE_SCN_MEM_SHARED           EQU 0x010000000
IMAGE_SCN_MEM_EXECUTE          EQU 0x020000000
IMAGE_SCN_MEM_READ             EQU 0x040000000
IMAGE_SCN_MEM_WRITE            EQU 0x080000000

; WARNING: For the simplicity we set the same alignment both
; for memory and file.
SECTION_ALIGNMENT EQU 512

; ------------------------------------------------------------------------------
;                                 DOS header
; ------------------------------------------------------------------------------

HeaderDOS:

    .Magic       db 'MZ', 0, 0
    .Unused      dq 7 dup 0
    .PointerToPE dd HeaderPE

; ------------------------------------------------------------------------------
;                                 PE header
; ------------------------------------------------------------------------------

HeaderPE:

    .Magic                db 'PE', 0, 0                ; 0 4
    .Machine              dw IMAGE_FILE_MACHINE_AMD64  ; 4 2 x64 target
    .NumberOfSections     dw NUMBER_OF_SECTIONS        ; 6 2

    .TimeDateStamp        dd 0                         ; 8  4
    .PointerToSymbolTable dd 0                         ; 12 4
    .NumberOfSymbols      dd 0                         ; 16 4

    .SizeOfOptionalHeader dw 240                       ; 20 2
    .Characteristics      dw 34                        ; 22 2

; ------------------------------------------------------------------------------
;                              Optional header
; ------------------------------------------------------------------------------

HeaderPE_Optional:

    .Magic               dw 0x20b     ; 0  2 Magic (PE32+)
    .MajorLinkerVersion  db 14        ; 2  1
    .MinorLinkerVersion  db 00        ; 3  1

    .SizeOfCode            dd 0       ; 4  4
    .SizeOfInitializedData dd 0       ; 8  4
    .SizeOfUnitializedData dd 0       ; 12 4
    .AddressOfEntryPoint   dd start   ; 16 4 Should point within .text section

    .BaseOfCode      dd 0             ; 20 4
    .ImageBase       dq IMAGE_BASE    ; 24 8
    .SectionAligment dd SECTION_ALIGNMENT ; 32 4 Section aligment in memory (4KB)
    .FileAligment    dd SECTION_ALIGNMENT ; 36 4 File alignment of sections (512B)

    .MajorOperatingSystemVersion dw 6 ; 40 2 OS major version
    .MInorOperatingSystemVersion dw 0 ; 42 2 OS minor version
    .MajorImageVersion           dw 0 ; 44 2 Major image version
    .MinorImageVersion           dw 0 ; 46 2 Minor image version
    .MajorSubsystemVersion       dw 6 ; 48 2 Major subsystem version
    .MinorSubsystemVersion       dw 0 ; 50 2 Minor subsystem version

    .Win32VersionValue   dd 0         ; 52 4 Win32VersionValue (reserved)

    .SizeOfImage         dd image_end     ; 56 4 Size of image in memory, including headers,
                                          ;      rounded up to Section Alignment
    .SizeOfHeaders       dd SECTION_ALIGNMENT ; 60 4 Size of all headers, rounded up to file-alignment

    .CheckSum            dd 0         ; 64 4 CheckSum

    .Subsystem           dw 3         ; 68 2 Subsystem (2 = Windows GUI, 3 = Windows console
    .DllCharacteristics  dw 0         ; 70 2 DllCharacteristics: high entropy ASLR,
                                      ;      relocatable, NX compatible, Terminal Server Aware

    .SizeOfStackReserve  dq 1048576   ; 72 8 Stack memory reserved (1 MB)
    .SizeOfStackCommit   dq 4096      ; 80 8 Stack memory commited (4KB)

    .SizeOfHeapReserve   dq 1048576   ; 88 8 Heap memory reserved (1 MB)
    .SizeOfHeapCommit    dq 4096      ; 96 8 Heap memory commited (4KB)

    .LoaderFlags         dd 0         ; 104 4 LoaderFlags (reserved, must be zero
    .NumberOfRvaAndSizes dd 16        ; 108 4 Number of Data Directory entries

DataDirectories:
                           ;  VA, size
    .ExportTable           dd 0, 0 ; 112 8
    .ImportTable           dd 1024, 0 ; 120 8
    .ResourceTable         dd 0, 0 ; 128 8
    .ExceptionTable        dd 0, 0 ; 136 8
    .CertificateTable      dd 0, 0 ; 144 8
    .BaseRelocationTable   dd 0, 0 ; 152 8
    .Debug                 dd 0, 0 ; 160 8
    .Architecture          dd 0, 0 ; 168 8
    .GlobalPtr             dd 0, 0 ; 176 8
    .TLSTable              dd 0, 0 ; 184 8
    .LoadConfigTable       dd 0, 0 ; 192 8
    .BoundImport           dd 0, 0 ; 200 8
    .IAT                   dd 0, 0 ; 208 8
    .DelayImportDescriptor dd 0, 0 ; 216 8
    .CLRRuntimeHeader      dd 0, 0 ; 224 8
    .Reserved              dd 0, 0 ; 232 8 Reserved, must be zero

; ------------------------------------------------------------------------------
;                              Sections header
; ------------------------------------------------------------------------------

HeaderPE_Sections:

HeaderPE_Sections_code:
    .Name                 db '.text', 0, 0, 0 ; 0  8
    .VirtualSize          dd 512              ; 8  4
    .VirtualAddress       dd 512              ; 12 4
    .SizeOfRawData        dd 512              ; 16 4
    .PointerToRawData     dd code_section_begin ; 20 4
    .PointerToRelocations dd 0                ; 24 4
    .PointerToLinenumbers dd 0                ; 28 4 (obsolete)
    .NumberOfRelocations  dw 0                ; 32 2 (obsolete)
    .NumberOfLineNumbers  dw 0                ; 34 2 (obsolete)
    .Characteristics      dd 0x60000020       ; 36 4

HeaderPE_Sections_data:
    .Name                 db '.data', 0, 0, 0 ; 0  8
    .VirtualSize          dd 512              ; 8  4
    .VirtualAddress       dd 1024             ; 12 4
    .SizeOfRawData        dd 512              ; 16 4
    .PointerToRawData     dd data_section_begin ; 20 4
    .PointerToRelocations dd 0                ; 24 4
    .PointerToLinenumbers dd 0                ; 28 4 (obsolete)
    .NumberOfRelocations  dw 0                ; 32 2 (obsolete)
    .NumberOfLineNumbers  dw 0                ; 34 2 (obsolete)
    .Characteristics      dd 0xc0000040       ; 36 4

HeaderPE_End:

; ------------------------------------------------------------------------------
;                                 Code section
; ------------------------------------------------------------------------------

align SECTION_ALIGNMENT
code_section_begin:

start:
    ;call qword [__imp__ExitProcess]
    ret

; ------------------------------------------------------------------------------
;                             Import table section
; ------------------------------------------------------------------------------

align SECTION_ALIGNMENT
data_section_begin:

ImportDescriptor:

    dd kernel32_hints, 0, 0, kernel32_name, kernel32_iat

    ; terminator
    dd 0, 0, 0, 0, 0

kernel32_hints:
    dq kernel32_export_ExitProcess
    dq kernel32_export_Beep
    dq 0

kernel32_name:
    db 'kernel32.dll', 0

kernel32_export_ExitProcess:
    dw 0
    db 'ExitProcess', 0
kernel32_export_Beep:
    dw 0
    db 'Beep', 0
    dq 0

kernel32_iat:
    __imp__ExitProcess dq kernel32_export_ExitProcess
    __imp__Beep        dq kernel32_export_Beep
    dq 0

data_section_end:

align SECTION_ALIGNMENT
image_end:
