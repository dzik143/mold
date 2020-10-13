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

; ------------------------------------------------------------------------------
;                            Imported modules
; ------------------------------------------------------------------------------

  dd RVA __kernel32_hints , 0, 0, RVA __kernel32_name , RVA __kernel32_iat
  dd RVA __msvcrt_hints   , 0, 0, RVA __msvcrt_name   , RVA __msvcrt_iat
  dd 0, 0, 0, 0, 0

; ------------------------------------------------------------------------------
;                               Kernel32.dll
; ------------------------------------------------------------------------------

__kernel32_name db 'kernel32.dll', 0

__kernel32_hints:
  dq RVA __kernel32_export_WriteFile
  dq RVA __kernel32_export_ExitProcess
  dq RVA __kernel32_export_LoadLibrary
  dq RVA __kernel32_export_GetProcAddress
  dq RVA __kernel32_export_RtlZeroMemory
  dq RVA __kernel32_export_GetStdHandle
  dq RVA __kernel32_export_CreateFileA
  dq RVA __kernel32_export_CloseHandle
  dq RVA __kernel32_export_GetFileSize
  dq RVA __kernel32_export_ReadFile
  dq RVA __kernel32_export_GetLastError
  dq RVA __kernel32_export_AddVectoredExceptionHandler
  dq RVA __kernel32_export_SetUnhandledExceptionFilter
  dq RVA __kernel32_export_VirtualProtect
  dq 0

__kernel32_hints_body:
  __kernel32_export_WriteFile                   db 0, 0, 'WriteFile', 0
  __kernel32_export_ExitProcess                 db 0, 0, 'ExitProcess', 0
  __kernel32_export_LoadLibrary                 db 0, 0, 'LoadLibraryA', 0
  __kernel32_export_GetProcAddress              db 0, 0, 'GetProcAddress', 0
  __kernel32_export_RtlZeroMemory               db 0, 0, 'RtlZeroMemory', 0
  __kernel32_export_GetStdHandle                db 0, 0, 'GetStdHandle', 0
  __kernel32_export_CreateFileA                 db 0, 0, 'CreateFileA', 0
  __kernel32_export_CloseHandle                 db 0, 0, 'CloseHandle', 0
  __kernel32_export_GetFileSize                 db 0, 0, 'GetFileSize', 0
  __kernel32_export_ReadFile                    db 0, 0, 'ReadFile', 0
  __kernel32_export_GetLastError                db 0, 0, 'GetLastError', 0
  __kernel32_export_AddVectoredExceptionHandler db 0, 0, 'AddVectoredExceptionHandler', 0
  __kernel32_export_SetUnhandledExceptionFilter db 0, 0, 'SetUnhandledExceptionFilter', 0
  __kernel32_export_VirtualProtect              db 0, 0, 'VirtualProtect', 0

__kernel32_iat:
  WriteFile                   dq RVA __kernel32_export_WriteFile
  ExitProcess                 dq RVA __kernel32_export_ExitProcess
  LoadLibrary                 dq RVA __kernel32_export_LoadLibrary
  GetProcAddress              dq RVA __kernel32_export_GetProcAddress
  RtlZeroMemory               dq RVA __kernel32_export_RtlZeroMemory
  GetStdHandle                dq RVA __kernel32_export_GetStdHandle
  CreateFileA                 dq RVA __kernel32_export_CreateFileA
  CloseHandle                 dq RVA __kernel32_export_CloseHandle
  GetFileSize                 dq RVA __kernel32_export_GetFileSize
  ReadFile                    dq RVA __kernel32_export_ReadFile
  GetLastError                dq RVA __kernel32_export_GetLastError
  AddVectoredExceptionHandler dq RVA __kernel32_export_AddVectoredExceptionHandler
  SetUnhandledExceptionFilter dq RVA __kernel32_export_SetUnhandledExceptionFilter
  VirtualProtect              dq RVA __kernel32_export_VirtualProtect
                              dq 0

; ------------------------------------------------------------------------------
;                                  Msvcrt.dll
; ------------------------------------------------------------------------------

__msvcrt_name db 'msvcrt.dll', 0

__msvcrt_hints:
  dq RVA __msvcrt_export_printf
  dq RVA __msvcrt_export_putchar
  dq RVA __msvcrt_export_puts
  dq RVA __msvcrt_export_malloc
  dq RVA __msvcrt_export_calloc
  dq RVA __msvcrt_export_free
  dq RVA __msvcrt_export_realloc
  dq RVA __msvcrt_export_strcmp
  dq RVA __msvcrt_export_strlen
  dq RVA __msvcrt_export_strcpy
  dq RVA __msvcrt_export_strncpy
  dq RVA __msvcrt_export_snprintf
  dq RVA __msvcrt_export_atof
  dq RVA __msvcrt_export_atoi
  dq RVA __msvcrt_export_strtol
  dq RVA __msvcrt_export___getmainargs
  dq 0

__msvcrt_hints_body:
  __msvcrt_export_printf        db 0, 0, 'printf', 0
  __msvcrt_export_putchar       db 0, 0, 'putchar', 0
  __msvcrt_export_puts          db 0, 0, 'puts', 0
  __msvcrt_export_malloc        db 0, 0, 'malloc', 0
  __msvcrt_export_calloc        db 0, 0, 'calloc', 0
  __msvcrt_export_free          db 0, 0, 'free', 0
  __msvcrt_export_realloc       db 0, 0, 'realloc', 0
  __msvcrt_export_strcmp        db 0, 0, 'strcmp', 0
  __msvcrt_export_strlen        db 0, 0, 'strlen', 0
  __msvcrt_export_strcpy        db 0, 0, 'strcpy', 0
  __msvcrt_export_strncpy       db 0, 0, 'strncpy', 0
  __msvcrt_export_snprintf      db 0, 0, '_snprintf', 0
  __msvcrt_export_atof          db 0, 0, 'atof', 0
  __msvcrt_export_atoi          db 0, 0, 'atoi', 0
  __msvcrt_export_strtol        db 0, 0, '_strtoi64', 0
  __msvcrt_export___getmainargs db 0, 0, '__getmainargs', 0

__msvcrt_iat:
  printf        dq RVA __msvcrt_export_printf
  putchar       dq RVA __msvcrt_export_putchar
  puts          dq RVA __msvcrt_export_puts
  malloc        dq RVA __msvcrt_export_malloc
  calloc        dq RVA __msvcrt_export_calloc
  free          dq RVA __msvcrt_export_free
  realloc       dq RVA __msvcrt_export_realloc
  strcmp        dq RVA __msvcrt_export_strcmp
  strlen        dq RVA __msvcrt_export_strlen
  strcpy        dq RVA __msvcrt_export_strcpy
  strncpy       dq RVA __msvcrt_export_strncpy
  snprintf      dq RVA __msvcrt_export_snprintf
  atof          dq RVA __msvcrt_export_atof
  atoi          dq RVA __msvcrt_export_atoi
  strtol        dq RVA __msvcrt_export_strtol
  __getmainargs dq RVA __msvcrt_export___getmainargs
                dq 0
