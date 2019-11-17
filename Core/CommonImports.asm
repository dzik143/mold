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
  atof, 'atof', \
  atoi, 'atoi', \
  strtol, '_strtoi64', \
  __getmainargs, '__getmainargs'
