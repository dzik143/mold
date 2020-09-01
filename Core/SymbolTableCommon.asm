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

; Utils.asm
dq __MOLD_PrintStackTraceItem     , name__MOLD_PrintStackTraceItem
dq __MOLD_PrintStackTrace         , name__MOLD_PrintStackTrace
dq __MOLD_PrintCpuContext         , name__MOLD_PrintCpuContext
dq __MOLD_DefaultExceptionHandler , name__MOLD_DefaultExceptionHandler

; Memory.asm
dq __MOLD_MemoryAlloc               , name__MOLD_MemoryAlloc
dq __MOLD_MemoryAddRef              , name__MOLD_MemoryAddRef
dq __MOLD_MemoryRelease             , name__MOLD_MemoryRelease
dq __MOLD_MemoryIncreaseBufferTwice , name__MOLD_MemoryIncreaseBufferTwice
dq __MOLD_MemoryRealloc             , name__MOLD_MemoryRealloc
dq __MOLD_MemoryDump                , name__MOLD_MemoryDump

; Variant.asm
dq __MOLD_VariantCheck                       , name__MOLD_VariantCheck
dq __MOLD_PrintVariant                       , name__MOLD_PrintVariant
dq __MOLD_PrintVariantLn                     , name__MOLD_PrintVariantLn
dq __MOLD_PrintArrayOfVariantsLn             , name__MOLD_PrintArrayOfVariantsLn
dq __MOLD_PrintVariantWithQuotas             , name__MOLD_PrintVariantWithQuotas
dq __MOLD_VariantConvertToString             , name__MOLD_VariantConvertToString
dq __MOLD_PrintVariantToStdError             , name__MOLD_PrintVariantToStdError
dq __MOLD_VariantTypeOf                      , name__MOLD_VariantTypeOf
dq __MOLD_PrintNewLine                       , name__MOLD_PrintNewLine
dq __MOLD_VariantTypeDispatcherXX            , name__MOLD_VariantTypeDispatcherXX
dq __MOLD_VariantTypeDispatcherX             , name__MOLD_VariantTypeDispatcherX
dq __MOLD_VariantAdd                         , name__MOLD_VariantAdd
dq __MOLD_VariantSub                         , name__MOLD_VariantSub
dq __MOLD_VariantMul                         , name__MOLD_VariantMul
dq __MOLD_VariantCompareEQ                   , name__MOLD_VariantCompareEQ
dq __MOLD_VariantCompareNE                   , name__MOLD_VariantCompareNE
dq __MOLD_VariantCompareLT                   , name__MOLD_VariantCompareLT
dq __MOLD_VariantCompareLE                   , name__MOLD_VariantCompareLE
dq __MOLD_VariantNeg                         , name__MOLD_VariantNeg
dq __MOLD_VariantDivAsInteger                , name__MOLD_VariantDivAsInteger
dq __MOLD_VariantDiv                         , name__MOLD_VariantDiv
dq __MOLD_VariantStoreAtIndex                , name__MOLD_VariantStoreAtIndex
dq __MOLD_VariantStoreAtKey                  , name__MOLD_VariantStoreAtKey
dq __MOLD_VariantLoadFromIndex               , name__MOLD_VariantLoadFromIndex
dq __MOLD_VariantLoadFromKey                 , name__MOLD_VariantLoadFromKey
dq __MOLD_StringHashDJB2                     , name__MOLD_StringHashDJB2
dq __MOLD_VariantArrayCreate                 , name__MOLD_VariantArrayCreate
dq __MOLD_VariantMapCreate                   , name__MOLD_VariantMapCreate
dq __MOLD_VariantMapResizeTwice              , name__MOLD_VariantMapResizeTwice
dq __MOLD_VariantObjectCreate                , name__MOLD_VariantObjectCreate
dq __MOLD_VariantDestroy                     , name__MOLD_VariantDestroy
dq __MOLD_VariantLength                      , name__MOLD_VariantLength
dq __MOLD_VariantAddRef                      , name__MOLD_VariantAddRef
dq __MOLD_VariantMove                        , name__MOLD_VariantMove
dq __MOLD_InitArgv                           , name__MOLD_InitArgv
dq __MOLD_Main                               , name__MOLD_Main
dq __MOLD_Halt                               , name__MOLD_Halt
dq __MOLD_NullMethodCalled                   , name__MOLD_NullMethodCalled
dq __MOLD_OpenExternalModule                 , name__MOLD_OpenExternalModule
dq __MOLD_LoadExternalFunction               , name__MOLD_LoadExternalFunction
dq __MOLD_Peek                               , name__MOLD_Peek
dq __MOLD_Ord                                , name__MOLD_Ord
dq __MOLD_LoadFile                           , name__MOLD_LoadFile
dq __MOLD_ForDriver_KeysAndValuesInMap       , name__MOLD_ForDriver_KeysAndValuesInMap
dq __MOLD_ForDriver_IndexesAndValuesInArray  , name__MOLD_ForDriver_IndexesAndValuesInArray
dq __MOLD_ForDriver_IndexesAndValuesInString , name__MOLD_ForDriver_IndexesAndValuesInString
dq __MOLD_ForDriver_Generic                  , name__MOLD_ForDriver_Generic
dq __MOLD_VariantStringJoin                  , name__MOLD_VariantStringJoin
dq __MOLD_PrintErrorAndDie                   , name__MOLD_PrintErrorAndDie
