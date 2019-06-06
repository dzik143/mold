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

argc Variant_t VARIANT_UNDEFINED
argv Variant_t VARIANT_UNDEFINED

NumberOfBytesWritten dd ?
NumberOfBytesReaded  dd ?

CrashDetected db 0

MemoryAllocCnt   dq 0
MemoryFreeCnt    dq 0
MemoryReallocCnt dq 0

PrintBuffer db 0 dup 32

; Static 'true' and 'false' strings.
StringTrue              Variant_t VARIANT_STRING, 0, StringTrueBufferHolder
StringTrueBufferHolder  Buffer_t 5, -1, 0, StringTrueBufferBytes
StringTrueBufferBytes   StringHead_t 4
                        db 'true', 0

StringFalse             Variant_t VARIANT_STRING, 0, StringFalseBufferHolder
StringFalseBufferHolder Buffer_t  6, -1, 0, StringFalseBufferBytes
StringFalseBufferBytes  StringHead_t 5
                        db 'false', 0

StringFloat             Variant_t VARIANT_STRING, 0, StringFloatBufferHolder
StringFloatBufferHolder Buffer_t  6, -1, 0, StringFloatBufferBytes
StringFloatBufferBytes  StringHead_t 5
                        db 'float', 0

StringInteger             Variant_t VARIANT_STRING, 0, StringIntegerBufferHolder
StringIntegerBufferHolder Buffer_t  8, -1, 0, StringIntegerBufferBytes
StringIntegerBufferBytes  StringHead_t 7
                          db 'integer', 0

StringBoolean             Variant_t VARIANT_STRING, 0, StringBooleanBufferHolder
StringBooleanBufferHolder Buffer_t  8, -1, 0, StringBooleanBufferBytes
StringBooleanBufferBytes  StringHead_t 7
                          db 'boolean', 0

OneCharacterStringTemp             Variant_t VARIANT_STRING, 0, OneCharacterStringTempBufferHolder
OneCharacterStringTempBufferHolder Buffer_t  2, -1, 0, OneCharacterStringTempBufferBytes
OneCharacterStringTempBufferBytes  StringHead_t 1
OneCharacterStringTempPeek         db 0, 0

OneCharacterStringTemp2             Variant_t VARIANT_STRING, 0, OneCharacterStringTempBufferHolder2
OneCharacterStringTempBufferHolder2 Buffer_t  2, -1, 0, OneCharacterStringTempBufferBytes2
OneCharacterStringTempBufferBytes2  StringHead_t 1
OneCharacterStringTempPeek2         db 0, 0

; TODO: Clean up this mess.
__TrashBin Variant_t ?
