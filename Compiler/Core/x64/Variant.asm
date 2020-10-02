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

true  EQU 1
false EQU 0

IMAGE_DIRECTORY_ENTRY_EXCEPTION EQU 3

include 'Debug.asm'
include 'Utils.asm'
include 'Memory.asm'

; Utils.
include 'utils\Halt.asm'
include 'utils\VCall.asm'

; Variant utils.
include 'variant\VariantCommon.asm'
include 'variant\VariantCheck.asm'
include 'variant\VariantTypeOf.asm'
include 'variant\VariantLength.asm'
include 'variant\VariantArrayShallowCopy.asm'
include 'variant\VariantPeek.asm'
include 'variant\VariantOrd.asm'
include 'variant\VariantCastTo.asm'
include 'variant\VariantCreateFrom.asm'

; Print functions
include 'variant\VariantPrintNewLine.asm'
include 'variant\VariantPrintOne.asm'
include 'variant\VariantPrintOneLn.asm'
include 'variant\VariantPrintOneQuotas.asm'
include 'variant\VariantPrintManyLn.asm'
include 'variant\VariantPrintOneToStdError.asm'

; String functions
include 'variant\VariantConvertToString.asm'

; Arithmetic
include 'variant\VariantTypeDispatcher.asm'
include 'variant\VariantCompare.asm'
include 'variant\VariantOp2.asm'
include 'variant\VariantNeg.asm'

; Generic move
include 'variant\VariantMove.asm'

; Array storage
include 'variant\VariantLoadFromIndex.asm'
include 'variant\VariantStoreAtIndex.asm'

; String functions
include 'variant\HashDJB2.asm'
include 'variant\VariantStringJoin.asm'

; Hash-map storage
include 'variant\VariantMapResizeTwice.asm'
include 'variant\VariantLoadFromKey.asm'
include 'variant\VariantStoreAtKey.asm'

; Create functions
include 'variant\VariantArrayCreate.asm'
include 'variant\VariantMapCreate.asm'
include 'variant\VariantObjectCreate.asm'
include 'variant\VariantStringCreate.asm'

; Reference counter and destroy
include 'variant\VariantDestroy.asm'
include 'variant\VariantAddRef.asm'

include 'io\LoadFile.asm'

include 'error\Error.asm'
include 'SysCall.asm'

; Init code.
include 'init\InitArgv.asm'

; Loops.
include 'loops\ForDriver_Generic.asm'
include 'loops\ForDriver_IndexesAndValuesInArray.asm'
include 'loops\ForDriver_IndexesAndValuesInArrayOrString.asm'
include 'loops\ForDriver_IndexesAndValuesInString.asm'
include 'loops\ForDriver_KeysAndValuesInMap.asm'

include 'init\Main.asm'
