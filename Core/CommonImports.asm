;###############################################################################
;#                                                                             #
;# This file is part of Mold project.                                          #
;# Copyright (c) 2015, 2018 Sylwester Wysocki (sw143@wp.pl).                   #
;#                                                                             #
;# The Mold code and any derived work however based on this software are       #
;# copyright of Sylwester Wysocki. Redistribution and use of the present       #
;# software is allowed according to terms specified in the file LICENSE        #
;# which comes in the source distribution.                                     #
;#                                                                             #
;# All rights reserved.                                                        #
;#                                                                             #
;###############################################################################

library \
  kernel32,'KERNEL32.DLL',\
  msvcrt,'MSVCRT.DLL'

import kernel32, \
  WriteFile,'WriteFile', \
  ExitProcess,'ExitProcess', \
  LoadLibrary,'LoadLibraryA', \
  GetProcAddress,'GetProcAddress', \
  RtlZeroMemory,'RtlZeroMemory', \
  GetStdHandle,'GetStdHandle', \
  CreateFileA,'CreateFileA', \
  CloseHandle,'CloseHandle', \
  GetFileSize,'GetFileSize', \
  ReadFile,'ReadFile', \
  GetLastError,'GetLastError', \
  AddVectoredExceptionHandler, 'AddVectoredExceptionHandler'

import msvcrt,\
  printf,  'printf', \
  putchar, 'putchar', \
  puts,    'puts', \
  malloc,  'malloc', \
  calloc,  'calloc', \
  free,    'free', \
  realloc, 'realloc', \
  strcmp,  'strcmp', \
  strlen,  'strlen', \
  strcpy,  'strcpy', \
  snprintf, '_snprintf', \
  __getmainargs, '__getmainargs'
