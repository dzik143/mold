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

argc Variant_t VARIANT_UNDEFINED
argv Variant_t VARIANT_UNDEFINED

NumberOfBytesWritten dd ?
NumberOfBytesReaded  dd ?

CrashDetected db 0

MemoryAllocCnt   dq 0
MemoryFreeCnt    dq 0
MemoryReallocCnt dq 0

PrintBuffer db 32 dup 0

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

__TempIndexInteger Variant_t VARIANT_INTEGER, 0, 0

; TODO: Clean up this mess.
__TrashBin Variant_t ?

__MOLD_TypeNames:
.typeUndefined Variant_t VARIANT_STRING, 0, .typeUndefinedBuffer
.typeNull      Variant_t VARIANT_STRING, 0, .typeNullBuffer
.typeInteger   Variant_t VARIANT_STRING, 0, .typeIntegerBuffer
.typeFloat     Variant_t VARIANT_STRING, 0, .typeFloatBuffer
.typeDouble    Variant_t VARIANT_STRING, 0, .typeFloatBuffer
.typeString    Variant_t VARIANT_STRING, 0, .typeStringBuffer
.typeBoolean   Variant_t VARIANT_STRING, 0, .typeBooleanBuffer
.typeArray     Variant_t VARIANT_STRING, 0, .typeArrayBuffer
.typeMap       Variant_t VARIANT_STRING, 0, .typeMapBuffer
.typeObject    Variant_t VARIANT_STRING, 0, .typeObjectBuffer

.typeUndefinedBuffer Buffer_t 10, -1, 0, .typeUndefinedData
.typeUndefinedData   dq 9
                     db 'undefined', 0

.typeNullBuffer      Buffer_t 5, -1, 0, .typeNullData
.typeNullData        dq 4
                     db 'null', 0

.typeIntegerBuffer   Buffer_t 8, -1, 0, .typeIntegerData
.typeIntegerData     dq 7
                     db 'integer', 0

.typeFloatBuffer     Buffer_t 6, -1, 0, .typeFloatData
.typeFloatData       dq 5
                     db 'float', 0

.typeDoubleBuffer    Buffer_t 7, -1, 0, .typeDoubleData
.typeDoubleData      dq 6
                     db 'double', 0

.typeStringBuffer    Buffer_t 7, -1, 0, .typeStringData
.typeStringData      dq 6
                     db 'string', 0

.typeBooleanBuffer   Buffer_t 8, -1, 0, .typeBooleanData
.typeBooleanData     dq 7
                     db 'boolean', 0

.typeArrayBuffer     Buffer_t 6, -1, 0, .typeArrayData
.typeArrayData       dq 5
                     db 'array', 0

.typeMapBuffer       Buffer_t 4, -1, 0, .typeMapData
.typeMapData         dq 3
                     db 'map', 0

.typeObjectBuffer    Buffer_t 7, -1, 0, .typeObjectData
.typeObjectData      dq 6
                     db 'object', 0
