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
