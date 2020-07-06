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
name__MOLD_PrintStackTraceItem     db '__MOLD_PrintStackTraceItem', 0
name__MOLD_PrintStackTrace         db '__MOLD_PrintStackTrace', 0
name__MOLD_PrintCpuContext         db '__MOLD_PrintCpuContext', 0
name__MOLD_DefaultExceptionHandler db '__MOLD_DefaultExceptionHandler', 0

; Memory.asm
name__MOLD_MemoryAlloc               db '__MOLD_MemoryAlloc', 0
name__MOLD_MemoryAddRef              db '__MOLD_MemoryAddRef', 0
name__MOLD_MemoryRelease             db '__MOLD_MemoryRelease', 0
name__MOLD_MemoryIncreaseBufferTwice db '__MOLD_MemoryIncreaseBufferTwice', 0
name__MOLD_MemoryRealloc             db '__MOLD_MemoryRealloc', 0
name__MOLD_MemoryDump                db '__MOLD_MemoryDump', 0

; Variant.asm
name__MOLD_VariantCheck            db '__MOLD_VariantCheck', 0
name__MOLD_PrintVariant            db '__MOLD_PrintVariant', 0
name__MOLD_PrintVariantWithQuotas  db '__MOLD_PrintVariantWithQuotas', 0
name__MOLD_VariantConvertToString  db '__MOLD_VariantConvertToString', 0
name__MOLD_PrintVariantToStdError  db '__MOLD_PrintVariantToStdError', 0
name__MOLD_VariantTypeOf           db '__MOLD_VariantTypeOf', 0
name__MOLD_PrintSpace              db '__MOLD_PrintSpace', 0
name__MOLD_PrintNewLine            db '__MOLD_PrintNewLine', 0
name__MOLD_VariantMul              db '__MOLD_VariantMul', 0
name__MOLD_VariantAdd              db '__MOLD_VariantAdd', 0
name__MOLD_VariantSub              db '__MOLD_VariantSub', 0
name__MOLD_VariantCompareEQ        db '__MOLD_VariantCompareEQ', 0
name__MOLD_VariantCompareNE        db '__MOLD_VariantCompareNE', 0
name__MOLD_VariantDefaultCompareEQ db '__MOLD_VariantDefaultCompareEQ', 0
name__MOLD_VariantCompareLT        db '__MOLD_VariantCompareLT', 0
name__MOLD_VariantCompareLE        db '__MOLD_VariantCompareLE', 0
name__MOLD_VariantNeg              db '__MOLD_VariantNeg', 0
name__MOLD_VariantDivAsInteger     db '__MOLD_VariantDivAsInteger', 0
name__MOLD_VariantDiv              db '__MOLD_VariantDiv', 0
name__MOLD_VariantCopy             db '__MOLD_VariantCopy', 0
name__MOLD_VariantStoreAtIndex     db '__MOLD_VariantStoreAtIndex', 0
name__MOLD_VariantLoadFromIndex    db '__MOLD_VariantLoadFromIndex', 0
name__MOLD_StringHashDJB2          db '__MOLD_StringHashDJB2', 0
name__MOLD_VariantArrayCreate      db '__MOLD_VariantArrayCreate', 0
name__MOLD_VariantMapCreate        db '__MOLD_VariantMapCreate', 0
name__MOLD_VariantMapResizeTwice   db '__MOLD_VariantMapResizeTwice', 0
name__MOLD_VariantObjectCreate     db '__MOLD_VariantObjectCreate', 0
name__MOLD_VariantDestroy          db '__MOLD_VariantDestroy', 0
name__MOLD_VariantLength           db '__MOLD_VariantLength', 0
name__MOLD_VariantAddRef           db '__MOLD_VariantAddRef', 0
name__MOLD_VariantMove             db '__MOLD_VariantMove', 0
name__MOLD_InitArgv                db '__MOLD_InitArgv', 0
name__MOLD_Main                    db '__MOLD_Main', 0
name__MOLD_NullMethodCalled        db '__MOLD_NullMethodCalled', 0
