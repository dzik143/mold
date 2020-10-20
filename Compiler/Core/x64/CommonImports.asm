;###############################################################################
;#                                                                             #
;# This file is part of Mold project.                                          #
;# Copyright (C) 2015, 2020 Sylwester Wysocki (sw143@wp.pl)                    #
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

__MOLD_importsTable:

  dd 0, 0, 0, RVA __kernel32_name , RVA __kernel32_table
  dd 0, 0, 0, RVA __msvcrt_name   , RVA __msvcrt_table
  dd 0, 0, 0, 0                   , 0

  __kernel32_name db 'kernel32.dll' , 0
  __msvcrt_name   db 'msvcrt.dll'   , 0

  __kernel32_table:
    WriteFile                   dq RVA __hint_WriteFile
    ExitProcess                 dq RVA __hint_ExitProcess
    LoadLibrary                 dq RVA __hint_LoadLibrary
    GetProcAddress              dq RVA __hint_GetProcAddress
    RtlZeroMemory               dq RVA __hint_RtlZeroMemory
    GetStdHandle                dq RVA __hint_GetStdHandle
    CreateFileA                 dq RVA __hint_CreateFileA
    CloseHandle                 dq RVA __hint_CloseHandle
    GetFileSize                 dq RVA __hint_GetFileSize
    ReadFile                    dq RVA __hint_ReadFile
    GetLastError                dq RVA __hint_GetLastError
    AddVectoredExceptionHandler dq RVA __hint_AddVectoredExceptionHandler
    SetUnhandledExceptionFilter dq RVA __hint_SetUnhandledExceptionFilter
    VirtualProtect              dq RVA __hint_VirtualProtect
                                dq 0

  __msvcrt_table:
    printf      dq RVA __hint_printf
    putchar     dq RVA __hint_putchar
    puts        dq RVA __hint_puts
    malloc      dq RVA __hint_malloc
    calloc      dq RVA __hint_calloc
    free        dq RVA __hint_free
    realloc     dq RVA __hint_realloc
    strcmp      dq RVA __hint_strcmp
    strlen      dq RVA __hint_strlen
    strcpy      dq RVA __hint_strcpy
    strncpy     dq RVA __hint_strncpy
    snprintf    dq RVA __hint_snprintf
    atof        dq RVA __hint_atof
    atoi        dq RVA __hint_atoi
    strtol      dq RVA __hint_strtol
    getmainargs dq RVA __hint_getmainargs
                dq 0

  __hint_WriteFile                   db 0, 0, 'WriteFile', 0
  __hint_ExitProcess                 db 0, 0, 'ExitProcess', 0
  __hint_LoadLibrary                 db 0, 0, 'LoadLibraryA', 0
  __hint_GetProcAddress              db 0, 0, 'GetProcAddress', 0
  __hint_RtlZeroMemory               db 0, 0, 'RtlZeroMemory', 0
  __hint_GetStdHandle                db 0, 0, 'GetStdHandle', 0
  __hint_CreateFileA                 db 0, 0, 'CreateFileA', 0
  __hint_CloseHandle                 db 0, 0, 'CloseHandle', 0
  __hint_GetFileSize                 db 0, 0, 'GetFileSize', 0
  __hint_ReadFile                    db 0, 0, 'ReadFile', 0
  __hint_GetLastError                db 0, 0, 'GetLastError', 0
  __hint_AddVectoredExceptionHandler db 0, 0, 'AddVectoredExceptionHandler', 0
  __hint_SetUnhandledExceptionFilter db 0, 0, 'SetUnhandledExceptionFilter', 0
  __hint_VirtualProtect              db 0, 0, 'VirtualProtect', 0

  __hint_printf      db 0, 0, 'printf', 0
  __hint_putchar     db 0, 0, 'putchar', 0
  __hint_puts        db 0, 0, 'puts', 0
  __hint_malloc      db 0, 0, 'malloc', 0
  __hint_calloc      db 0, 0, 'calloc', 0
  __hint_free        db 0, 0, 'free', 0
  __hint_realloc     db 0, 0, 'realloc', 0
  __hint_strcmp      db 0, 0, 'strcmp', 0
  __hint_strlen      db 0, 0, 'strlen', 0
  __hint_strcpy      db 0, 0, 'strcpy', 0
  __hint_strncpy     db 0, 0, 'strncpy', 0
  __hint_snprintf    db 0, 0, '_snprintf', 0
  __hint_atof        db 0, 0, 'atof', 0
  __hint_atoi        db 0, 0, 'atoi', 0
  __hint_strtol      db 0, 0, '_strtoi64', 0
  __hint_getmainargs db 0, 0, '__getmainargs', 0
