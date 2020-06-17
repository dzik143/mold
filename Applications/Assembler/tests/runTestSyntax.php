<?php
################################################################################
#                                                                              #
# This file is part of Mold project.                                           #
# Copyright (C) 2015, 2019 Sylwester Wysocki <sw143@wp.pl>                     #
#                                                                              #
# This program is free software: you can redistribute it and/or modify         #
# it under the terms of the GNU General Public License as published by         #
# the Free Software Foundation, either version 3 of the License, or            #
# (at your option) any later version.                                          #
#                                                                              #
# This program is distributed in the hope that it will be useful,              #
# but WITHOUT ANY WARRANTY; without even the implied warranty of               #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                #
# GNU General Public License for more details.                                 #
#                                                                              #
# You should have received a copy of the GNU General Public License            #
# along with this program. If not, see <http://www.gnu.org/licenses/>          #
#                                                                              #
################################################################################

// -----------------------------------------------------------------------------
//                             Helper functions
// -----------------------------------------------------------------------------

function getFromPool($pool)
{
  return $pool[array_rand($pool)];
}

function r8()  {return getFromPool(['al' , 'bl' , 'cl' , 'dl']);}
function r16() {return getFromPool(['ax' , 'bx' , 'cx' , 'dx' , 'sp' , 'bp' , 'si' , 'di']);}
function r32() {return getFromPool(['eax', 'ebx', 'ecx', 'edx', 'esp', 'ebp', 'esi', 'edi']);}
function r64() {return getFromPool(['rax', 'rbx', 'rcx', 'rdx', 'rsp', 'rbp', 'rsi', 'rdi']);}
function mm()  {return getFromPool(['mm0', 'mm1', 'mm2', 'mm3', 'mm4', 'mm5', 'mm6', 'mm7']);}
function sti() {return getFromPool(['st1', 'st2', 'st3', 'st4', 'st5', 'st6', 'st7']);}
function st0() {return 'st0';}

function m8()      {return 'byte ['.r64().']';}
function m16()     {return 'word ['.r64().']';}
function m32()     {return 'dword ['.r64().']';}
function m64()     {return 'qword ['.r64().']';}
function m80()     {return 'tword ['.r64().']';}
function mcustom() {return '['.r64().']';}

function u8()  {return rand(0, 255);}
function u16() {return rand(256, 65535);}
function u32() {return rand(65536, 4294967295);}
function u64() {return '4294967296'.rand(0,99999);}

function sgn() {return (rand() % 2) ? -1 : 1;}
function i8()  {return sgn() * rand(0, 127);}
function i16() {return sgn() * rand(256, 32767);}
function i32() {return sgn() * rand(65536, 2147483647);}
function i64() {return getFromPool(['-', '']).u64();}

function head($text)
{
  echo "; ##############################################################################\n";
  echo "; #                                                                            #\n";
  echo '; # ';
                           echo str_pad($text, 75, ' ', STR_PAD_BOTH);
  echo "#\n";
  echo "; #                                                                            #\n";
  echo "; ##############################################################################\n";
}

function suite($name)
{
  echo "; ------------------------------------------------------------------------------\n";
  echo "; $name \n";
  echo "; ------------------------------------------------------------------------------\n";
}

function testFromSource($testName, $codeLine, $errorExpected)
{
  echo "  $testName...";

  file_put_contents('_temp/_tmp.asm', $codeLine);

  exec('..\mold-asm _temp/_tmp.asm >_temp/_tmp.out 2>_temp/_tmp.err');

  $errorReceived = file_get_contents('_temp/_tmp.err');
  $errorReceived = str_replace('error: _temp/_tmp.asm:', '', $errorReceived);
  $errorReceived = str_replace('error: ', '', $errorReceived);
  $errorReceived = trim(preg_replace("/\r\n|\r|\n/", '', $errorReceived));

  if ($errorReceived !== $errorExpected)
  {
    echo "FAIL!\n";
    echo "Code line      : [$codeLine]\n";
    echo "Expected error : [$errorExpected]\n";
    echo "Received error : [$errorReceived]\n";
    die(-1);
  }

  echo "OK\n";
}

function test(...$args)
{
  $cnt  = count($args);
  $code = $args[0];
  $sep  = ' ';

  for ($idx = 1; $idx < $cnt - 1; $idx++)
  {
    $code .= $sep . $args[$idx];
    $sep = ', ';
  }

  $errorExpected = $args[$cnt - 1];
  $testName      = str_pad($code, 24).' ; '.$errorExpected;

  testFromSource($testName, $code, $errorExpected);
}

// -----------------------------------------------------------------------------
//                                Entry point
// -----------------------------------------------------------------------------

head('CORE OPCODES');

// -----------------------------------------------------------------------------
// Instructions, which are generally valid, but not available
// in 64-bit mode (long mode).
// -----------------------------------------------------------------------------

suite('Invalid in 64-bit');

$pool = [
  'aaa'  , 'aad'     , 'aam'    , 'lahf'  , 'aas'    , 'das'   , 'sahf'    ,
  'lds'  , 'les'     , 'daa'    , 'into'  , 'bound'  , 'popa'  , 'pusha'   ,
  'arpl' , 'loadall' , 'pushad' , 'popad' , 'pushfd' , 'popfd' , 'loadalld',
  'ibts' , 'xbts'];

foreach ($pool as $opcode)
{
  test($opcode, "invalid in 64-bit mode: '$opcode'");
}

// -----------------------------------------------------------------------------
// Zero operands opcodes.
// -----------------------------------------------------------------------------

suite('zero operand opcodes');

$pool = [
  // Core
  'cbw'    , 'cwd'    , 'clc'   , 'cld'     , 'cli'     , 'cmc'    , 'cmpsb' ,
  'cmpsw'  , 'hlt'    , 'iret'  , 'lock'    , 'lodsb'   , 'lodsw'  , 'movsb' ,
  'movsw'  , 'popf'   , 'pushf' , 'rep'     , 'repe'    , 'repne'  , 'scasb' ,
  'scasw'  , 'stc'    , 'std'   , 'sti'     , 'stosb'   , 'stosw'  , 'wait'  ,
  'xlatb'  , 'leave'  , 'clts'  , 'cwde'    , 'cdq'     , 'iretd'  , 'lodsd' ,
  'stosd'  , 'cmpsd'  , 'movsd' , 'scasd'   , 'insd'    , 'outsd'  , 'invd'  ,
  'wbinvd' , 'cpuid'  , 'rdmsr' , 'rdtsc'   , 'wrmsr'   , 'rsm'    , 'ud2'   ,
  'rdpmc'  , 'syscall', 'sysret', 'sysenter', 'sysexit' , 'cdqe'   , 'cqo'   ,
  'cmpsq'  , 'iretq'  , 'lodsq' , 'popfq'   , 'pushfq'  , 'rdtscp' , 'scasq' ,
  'stosq'  , 'swapgs' ,

  // MMX Technology
  'emms'
];

foreach ($pool as $opcode)
{
  // Check number of operands.
  test($opcode, r32(),       'too many operands');
  test($opcode, r32(), i8(), 'too many operands');
}

// -----------------------------------------------------------------------------
// ALU(x, y)
// r,r
// r,m
// m,r
// r,imm
// m,imm
// -----------------------------------------------------------------------------

$pool = [
  'add', 'adc', 'add', 'and', 'cmp', 'or', 'sbb', 'sub', 'test', 'xor'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, r8(),             'not enough operands');
  test($opcode, r8(), r8(), i8(), 'too many operands');

  // Bad operand sizes: r-r
  test($opcode, r8() , r16() , 'operand sizes do not match');
  test($opcode, r8() , r32() , 'operand sizes do not match');
  test($opcode, r8() , r64() , 'operand sizes do not match');
  test($opcode, r16(), r8()  , 'operand sizes do not match');
  test($opcode, r16(), r32() , 'operand sizes do not match');
  test($opcode, r16(), r64() , 'operand sizes do not match');

  test($opcode, r32(), r8()  , 'operand sizes do not match');
  test($opcode, r32(), r16() , 'operand sizes do not match');
  test($opcode, r32(), r64() , 'operand sizes do not match');

  test($opcode, r64(), r8()  , 'operand sizes do not match');
  test($opcode, r64(), r16() , 'operand sizes do not match');
  test($opcode, r64(), r32() , 'operand sizes do not match');

  // Bad operand sizes: m-r
  test($opcode, m8() , r16() , 'operand sizes do not match');
  test($opcode, m8() , r32() , 'operand sizes do not match');
  test($opcode, m8() , r64() , 'operand sizes do not match');
  test($opcode, m16(), r8()  , 'operand sizes do not match');
  test($opcode, m16(), r32() , 'operand sizes do not match');
  test($opcode, m16(), r64() , 'operand sizes do not match');

  test($opcode, m32(), r8()  , 'operand sizes do not match');
  test($opcode, m32(), r16() , 'operand sizes do not match');
  test($opcode, m32(), r64() , 'operand sizes do not match');

  test($opcode, m64(), r8()  , 'operand sizes do not match');
  test($opcode, m64(), r16() , 'operand sizes do not match');
  test($opcode, m64(), r32() , 'operand sizes do not match');

  // Bad operand sizes: r-m
  test($opcode, r8() , m16() , 'operand sizes do not match');
  test($opcode, r8() , m32() , 'operand sizes do not match');
  test($opcode, r8() , m64() , 'operand sizes do not match');
  test($opcode, r16(), m8()  , 'operand sizes do not match');
  test($opcode, r16(), m32() , 'operand sizes do not match');
  test($opcode, r16(), m64() , 'operand sizes do not match');

  test($opcode, r32(), m8()  , 'operand sizes do not match');
  test($opcode, r32(), m16() , 'operand sizes do not match');
  test($opcode, r32(), m64() , 'operand sizes do not match');

  test($opcode, r64(), m8()  , 'operand sizes do not match');
  test($opcode, r64(), m16() , 'operand sizes do not match');
  test($opcode, r64(), m32() , 'operand sizes do not match');

  // Bad operands: memory-memory.
  test($opcode, m32(), m32(), 'too many memory operands');

  // Bad operand: imm destination.
  test($opcode, i32(), r32(), 'constant used as destination operand');

  // Out of range immediate.
  test($opcode, r8() , i16(), 'value out of range');
  test($opcode, r16(), i32(), 'value out of range');
  test($opcode, r64(), i64(), 'value out of range');

  test($opcode, m8() , i16(), 'value out of range');
  test($opcode, m16(), i32(), 'value out of range');
  test($opcode, m64(), i64(), 'value out of range');

  // Good examples (should assemble without error).
  // r,r
  test($opcode, r8() , r8()  , '');
  test($opcode, r16(), r16() , '');
  test($opcode, r32(), r32() , '');
  test($opcode, r64(), r64() , '');

  // r,imm
  test($opcode, r8() , i8()  , '');
  test($opcode, r16(), i16() , '');
  test($opcode, r32(), i32() , '');
  test($opcode, r64(), i32() , '');

  // r,m
  test($opcode, r8() , m8()  , '');
  test($opcode, r16(), m16() , '');
  test($opcode, r32(), m32() , '');
  test($opcode, r64(), m64() , '');

  // m,imm
  test($opcode, m8() , i8()  , '');
  test($opcode, m16(), i16() , '');
  test($opcode, m32(), i32() , '');
  test($opcode, m64(), i32() , '');
}

// -----------------------------------------------------------------------------
// Shifts and rotates.
// r,cl
// r,imm8
// m,cl
// m,imm8
// -----------------------------------------------------------------------------

$pool = ['rcl', 'rcr', 'rol', 'ror', 'sal', 'sar', 'shl', 'shr'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, r8(),             'not enough operands');
  test($opcode, r8(), r8(), i8(), 'too many operands');

  // Bad operands.
  test($opcode, r64(), r16() , "only imm8 or the cl register can be used as the second operand for: '$opcode'");
  test($opcode, m32(), 'al'  , "only imm8 or the cl register can be used as the second operand for: '$opcode'");
  test($opcode, r16(), m8()  , "memory address cannot be used as the second operand for: '$opcode'");
  test($opcode, i8() , 'cl'  , 'constant used as destination operand');

  // Memory-memory.
  test($opcode, m8(), m8(), 'too many memory operands');

  // Bad operand: out of range.
  test($opcode, r32() , i16(), 'value out of range');
  test($opcode, m64() , i16(), 'value out of range');

  // Good examples.
  test($opcode, r8() , 'cl', '');
  test($opcode, r16(), i8(), '');
  test($opcode, m32(), 'cl', '');
  test($opcode, m64(), i8(), '');
}

// -----------------------------------------------------------------------------
// ALU(x): r | m
// -----------------------------------------------------------------------------

$pool = ['dec', 'inc', 'div', 'idiv', 'neg', 'not'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, r8(), r8(),       'too many operands');
  test($opcode, r8(), r8(), i8(), 'too many operands');

  // Bad operand: immediate.
  test($opcode, i8(), "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r8()  , '');
  test($opcode, r16() , '');
  test($opcode, r32() , '');
  test($opcode, r64() , '');

  test($opcode, m8()  , '');
  test($opcode, m16() , '');
  test($opcode, m32() , '');
  test($opcode, m64() , '');
}

// -----------------------------------------------------------------------------
// push r16
// push m16
// push r64
// push m64
// push imm8
// push imm16
// -----------------------------------------------------------------------------

suite('push');

// Check number of operands.
test('push',                   'not enough operands');
test('push', r8(), r8(),       'too many operands');
test('push', r8(), r8(), i8(), 'too many operands');
test('push', r8(), r8(), i8(), 'too many operands');

// Push 8/32 reg/mem (forbidden).
test('push', r8()  , 'push/pop r8/32 are unavailable in 64-bit mode');
test('push', r32() , 'push/pop r8/32 are unavailable in 64-bit mode');
test('push', m8()  , 'push/pop m8/32 are unavailable in 64-bit mode');
test('push', m32() , 'push/pop m8/32 are unavailable in 64-bit mode');

// Bad operand: out of range.
test('push', i32(), 'value out of range');

// Good examples (should assemble without error).
test('push', r16(), '');
test('push', r64(), '');
test('push', m16(), '');
test('push', m64(), '');
test('push', i8() , '');
test('push', i16(), '');

// -----------------------------------------------------------------------------
// pop r16
// pop m16
// pop r64
// pop m64
// -----------------------------------------------------------------------------

suite('pop');

// Check number of operands.
test('pop',                   'not enough operands');
test('pop', r8(), r8(),       'too many operands');
test('pop', r8(), r8(), i8(), 'too many operands');
test('pop', r8(), r8(), i8(), 'too many operands');

// Pop 8/32 reg/mem (forbidden).
test('pop', r8()  , 'push/pop r8/32 are unavailable in 64-bit mode');
test('pop', r32() , 'push/pop r8/32 are unavailable in 64-bit mode');
test('pop', m8()  , 'push/pop m8/32 are unavailable in 64-bit mode');
test('pop', m32() , 'push/pop m8/32 are unavailable in 64-bit mode');

// Try to pop to imm.
test('pop', i8(), "immediate operand not allowed for: 'pop'");

// Good examples (should assemble without error).
test('pop', r16(), '');
test('pop', r64(), '');
test('pop', m16(), '');
test('pop', m64(), '');

// -----------------------------------------------------------------------------
// mov r,r
// mov r,m
// mov m,r
// mov r,imm
// mov m,imm
// mov r64,imm64
// -----------------------------------------------------------------------------

suite('mov');

// Check number of operands.
test('mov',                   'not enough operands');
test('mov', r8(),             'not enough operands');
test('mov', r8(), r8(), i8(), 'too many operands');

// Use constant as destination.
test('mov', i8(), r8(), 'constant used as destination operand');

// Bad operand sizes.
test('mov', r8() , r16(), 'operand sizes do not match');
test('mov', r16(), m8() , 'operand sizes do not match');
test('mov', r32(), m64(), 'operand sizes do not match');
test('mov', m64(), r8() , 'operand sizes do not match');

// Bad operand: out of range immediate.
test('mov', r8()  , i16(), 'value out of range');
test('mov', r16() , i32(), 'value out of range');
# TODO: test('mov', r32() , i64(), 'value out of range');

test('mov', m8()  , i16(), 'value out of range');
test('mov', m16() , i32(), 'value out of range');
# TODO: test('mov', m32() , i64(), 'value out of range');

// Good examples (should assemble without error).
test('mov', r8()  , r8()  , '');
test('mov', r16() , m16() , '');
test('mov', m32() , r32() , '');
test('mov', m64() , i32() , ''); // TODO: 64-bit imm

// -----------------------------------------------------------------------------
// xchg r,r
// xchg r,m
// xchg m,r
// -----------------------------------------------------------------------------

suite('xchg');

// Check number of operands.
test('xchg',                   'not enough operands');
test('xchg', r8(),             'not enough operands');
test('xchg', r8(), r8(), i8(), 'too many operands');

// Use immediate operand (forbidden).
test('xchg', i8(), r8(), 'constant used as destination operand');
test('xchg', r8(), i8(), "immediate operand not allowed for: 'xchg'");

// Bad operand sizes: r-r
test('xchg', r8() , r16() , 'operand sizes do not match');
test('xchg', r8() , r32() , 'operand sizes do not match');
test('xchg', r8() , r64() , 'operand sizes do not match');
test('xchg', r16(), r8()  , 'operand sizes do not match');
test('xchg', r16(), r32() , 'operand sizes do not match');
test('xchg', r16(), r64() , 'operand sizes do not match');

test('xchg', r32(), r8()  , 'operand sizes do not match');
test('xchg', r32(), r16() , 'operand sizes do not match');
test('xchg', r32(), r64() , 'operand sizes do not match');

test('xchg', r64(), r8()  , 'operand sizes do not match');
test('xchg', r64(), r16() , 'operand sizes do not match');
test('xchg', r64(), r32() , 'operand sizes do not match');

// Bad operand sizes: m-r
test('xchg', m8() , r16() , 'operand sizes do not match');
test('xchg', m8() , r32() , 'operand sizes do not match');
test('xchg', m8() , r64() , 'operand sizes do not match');
test('xchg', m16(), r8()  , 'operand sizes do not match');
test('xchg', m16(), r32() , 'operand sizes do not match');
test('xchg', m16(), r64() , 'operand sizes do not match');

test('xchg', m32(), r8()  , 'operand sizes do not match');
test('xchg', m32(), r16() , 'operand sizes do not match');
test('xchg', m32(), r64() , 'operand sizes do not match');

test('xchg', m64(), r8()  , 'operand sizes do not match');
test('xchg', m64(), r16() , 'operand sizes do not match');
test('xchg', m64(), r32() , 'operand sizes do not match');

// Bad operand sizes: r-m
test('xchg', r8() , m16() , 'operand sizes do not match');
test('xchg', r8() , m32() , 'operand sizes do not match');
test('xchg', r8() , m64() , 'operand sizes do not match');
test('xchg', r16(), m8()  , 'operand sizes do not match');
test('xchg', r16(), m32() , 'operand sizes do not match');
test('xchg', r16(), m64() , 'operand sizes do not match');

test('xchg', r32(), m8()  , 'operand sizes do not match');
test('xchg', r32(), m16() , 'operand sizes do not match');
test('xchg', r32(), m64() , 'operand sizes do not match');

test('xchg', r64(), m8()  , 'operand sizes do not match');
test('xchg', r64(), m16() , 'operand sizes do not match');
test('xchg', r64(), m32() , 'operand sizes do not match');

// Good examples (should assemble without error).
test('xchg', r8() , r8()  , '');
test('xchg', m16(), r16() , '');
test('xchg', r32(), m32() , '');
test('xchg', r64(), r64() , '');

// -----------------------------------------------------------------------------
// mul r
// mul m
// mul rd,rd
// mul rd,md
// -----------------------------------------------------------------------------

suite('TODO: mul');

// Check number of operands.
test('mul',                   'not enough operands');
test('mul', r8(), r8(), i8(), 'too many operands');

// Immediate as destination.
test('mul', i8(), "immediate operand not allowed for: 'mul'");

// Good examples (should assemble without error).
test('mul', r8() , '');
test('mul', r16(), '');
test('mul', r32(), '');
test('mul', r64(), '');

test('mul', m8() , '');
test('mul', m16(), '');
test('mul', m32(), '');
test('mul', m64(), '');

// TODO: test('mul', r16() , r16(), '');
// TODO: test('mul', r32() , r32(), '');
// TODO: test('mul', r64() , r64(), '');

// TODO: test('mul', r16() , m16(), '');
// TODO: test('mul', r32() , m32(), '');
// TODO: test('mul', r64() , m64(), '');

// -----------------------------------------------------------------------------
// imul r
// imul m
// imul rd,rd
// imul rd,md
// imul rd,md,imm
// -----------------------------------------------------------------------------

suite('TODO: imul');

// Check number of operands.
test('imul', 'not enough operands');

// Good examples (should assemble without error).
test('imul', r8() , '');
test('imul', r16(), '');
test('imul', r32(), '');
test('imul', r64(), '');

test('imul', m8() , '');
test('imul', m16(), '');
test('imul', m32(), '');
test('imul', m64(), '');

// TODO: test('imul', r16() , r16(), '');
// TODO: test('imul', r32() , r32(), '');
// TODO: test('imul', r64() , r64(), '');

// TODO: test('imul', r16() , m16(), '');
// TODO: test('imul', r32() , m32(), '');
// TODO: test('imul', r64() , m64(), '');
// TODO: test('imul', r64() , m64(), i32(), '');

// -----------------------------------------------------------------------------
// in al,imm8
// in ax,imm8
// in eax,imm8
// in al,dx
// in ax,dx
// in eax,dx
// -----------------------------------------------------------------------------

suite('in');

// Check number of operands.
test('in',                   'not enough operands');
test('in', 'al', 'dx', i8(), 'too many operands');

// Bad data register (only al/ax/eax are allowed).
test('in', 'rax', 'dx', 'only al/ax/eax registers can be data operand for in/out');
test('in', 'cl' , 'dx', 'only al/ax/eax registers can be data operand for in/out');
test('in', m8() , 'dx', "memory operands not allowed for: 'in'");
test('in', i8() , 'dx', "constant used as destination operand");

// Bad port.
test('in', 'al' , 'dl' , "port must be imm8 or dx register for: 'in'");
test('in', 'ax' , 'al' , "port must be imm8 or dx register for: 'in'");
test('in', 'eax', m16(), "memory operands not allowed for: 'in'");
test('in', 'al' , u16(), 'value out of range');

// Good examples (should assemble without error).
test('in', 'al' , u8(), '');
test('in', 'ax' , u8(), '');
test('in', 'eax', u8(), '');
test('in', 'al' , 'dx', '');
test('in', 'ax' , 'dx', '');
test('in', 'eax', 'dx', '');

// -----------------------------------------------------------------------------
// out imm8,al
// out imm8,ax
// out imm8,eax
// out dx,al
// out dx,ax
// out dx,eax
// -----------------------------------------------------------------------------

suite('out');

// Check number of operands.
test('out',                   'not enough operands');
test('out', 'dx', 'al', i8(), 'too many operands');

// Bad data register (only al/ax/eax are allowed).
test('out', 'dx', 'rax', 'only al/ax/eax registers can be data operand for in/out');
test('out', 'dx', 'cl' , 'only al/ax/eax registers can be data operand for in/out');
test('out', 'dx', m8() , "memory operands not allowed for: 'out'");

// Bad port.
test('out', 'dl' , 'al' , "port must be imm8 or dx register for: 'out'");
test('out', 'al' , 'ax' , "port must be imm8 or dx register for: 'out'");
test('out', m16(), 'eax', "memory operands not allowed for: 'out'");
test('out', u16(), 'al' , 'value out of range');

// Good examples (should assemble without error).
test('out', u8(), 'al' , '');
test('out', u8(), 'ax' , '');
test('out', u8(), 'eax', '');
test('out', 'dx', 'al' , '');
test('out', 'dx', 'ax' , '');
test('out', 'dx', 'eax', '');

// -----------------------------------------------------------------------------
// lea rd,m
// -----------------------------------------------------------------------------

suite('lea');

// Check number of operands.
test('lea',                     'not enough operands');
test('lea', r64(), m64(), i8(), 'too many operands');

// Bad destination.
test('lea', i8() , m64(), 'constant used as destination operand');
test('lea', m64(), m64(), 'too many memory operands');
test('lea', m64(), r64(), "memory address cannot be destination operand for: 'lea'");
test('lea', r8() , m64(), "operand does not match the statement for: 'lea'");

// Good examples (should assemble without error).
test('lea', r16(), m8(), '');
test('lea', r32(), m8(), '');
test('lea', r64(), m8(), '');

test('lea', r16(), m16(), '');
test('lea', r32(), m16(), '');
test('lea', r64(), m16(), '');

test('lea', r16(), m32(), '');
test('lea', r32(), m32(), '');
test('lea', r64(), m32(), '');

test('lea', r16(), m64(), '');
test('lea', r32(), m64(), '');
test('lea', r64(), m64(), '');

// -----------------------------------------------------------------------------
// int imm8
// -----------------------------------------------------------------------------

suite('int');

// Check number of operands.
test('int',                   'not enough operands');
test('int', r8(), r8(),       'too many operands');
test('int', r8(), r8(), r8(), 'too many operands');

// Bad interrupt number.
test('int', m8() , "immediate operand expected for: 'int'");
test('int', r8() , "immediate operand expected for: 'int'");
test('int', i16(), 'value out of range');

// Good examples (should assemble without error).
test('int', u8(), '');

// -----------------------------------------------------------------------------
// nop -
// nop rd
// nop md
// -----------------------------------------------------------------------------

suite('nop');

// Check number of operands.
test('nop', r32(), r32(),        'too many operands');
test('nop', r32(), r32(), r32(), 'too many operands');

// Bad operand.
test('nop', r8(), "8-bit operands not allowed for: 'nop'");
test('nop', m8(), "8-bit operands not allowed for: 'nop'");

// Good examples (should assemble without error).
test('nop', '');

test('nop', r16(), '');
test('nop', r32(), '');
test('nop', r64(), '');

test('nop', m16(), '');
test('nop', m32(), '');
test('nop', m64(), '');

// -----------------------------------------------------------------------------
// ret -
// ret imm16
// -----------------------------------------------------------------------------

suite('ret');

// Check number of operands.
test('ret', r32(), i16(),        'too many operands');
test('ret', r32(), r32(), i16(), 'too many operands');

// Bad immediate.
test('ret', m8() , "immediate operand expected for: 'ret'");
test('ret', r8() , "immediate operand expected for: 'ret'");
test('ret', i32(), 'value out of range');

// Good examples (should assemble without error).
test('ret', '');
test('ret', u16(), '');

// -----------------------------------------------------------------------------
// enter imm16, imm8
// -----------------------------------------------------------------------------

suite('enter');

// Check number of operands.
test('enter',                    'not enough operands');
test('enter', i16(), i8(), r8(), 'too many operands');

// Bad operands.
test('enter', r16(), i8() , "two immediate operands are expected for: 'enter'");
test('enter', m16(), i8() , "two immediate operands are expected for: 'enter'");
test('enter', i16(), r8() , "two immediate operands are expected for: 'enter'");
test('enter', i16(), m8() , "two immediate operands are expected for: 'enter'");
test('enter', i32(), u8() , 'value out of range');
test('enter', u16(), i16(), 'value out of range');

// Good examples (should assemble without error).
test('enter', u16(), u8(), '');

// -----------------------------------------------------------------------------
// lar/lsl rd,r16
// lar/lsl rd,m16
// -----------------------------------------------------------------------------

$pool = ['lar', 'lsl'];

foreach ($pool as $opcode)
{
  suite('TODO: '.$opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(),              'not enough operands');
  test($opcode, r32(), r16(), i8(), 'too many operands');

  // Bad destination.
  test($opcode, r8(), m16(), "8-bit operands not allowed for: '$opcode'");
  test($opcode, m8(), m16(), "too many memory operands");
  test($opcode, m8(), r16(), "memory address cannot be destination operand for: '$opcode'");

  // Bad source.
  test($opcode, r32(), m8(),  "8-bit operands not allowed for: '$opcode'");
  test($opcode, r32(), i16(), "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r16(), r16(), '');
  test($opcode, r32(), r32(), '');
  test($opcode, r64(), r32(), '');

  test($opcode, r16(), m16(), '');
  test($opcode, r32(), m16(), '');
  test($opcode, r64(), m16(), '');
}

// -----------------------------------------------------------------------------
// lldt  r16 | m16
// ltr   r16 | m16
// verr  r16 | m16
// verw  r16 | m16
// -----------------------------------------------------------------------------

$pool = ['lldt', 'ltr', 'verr', 'verw'];

foreach ($pool as $opcode)
{
  suite('TODO: '.$opcode);

  // Check number of operands.
  test($opcode,                      'not enough operands');
  test($opcode, r16(), r16(),        'too many operands');
  test($opcode, r16(), r16(), r16(), 'too many operands');

  // Bad operand.
  // TODO: 32-bit/64-bit operands.
  test($opcode, i16(), "immediate operand not allowed for: '$opcode'");
  test($opcode, r8() , "8-bit operands not allowed for: '$opcode'");
  test($opcode, m8() , "8-bit operands not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r16(), '');
  test($opcode, m16(), '');
}

// -----------------------------------------------------------------------------
//  str  rd | m16
//  smsw rd | m16
//  lmsw rd | m16
// -----------------------------------------------------------------------------

$pool = ['str', 'smsw', 'lmsw'];

foreach ($pool as $opcode)
{
  suite('TODO: '.$opcode);

  // Check number of operands.
  test($opcode,                      'not enough operands');
  test($opcode, r16(), r16(),        'too many operands');
  test($opcode, r16(), r16(), r16(), 'too many operands');

  // Bad operand.
  test($opcode, i16(), "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r16(), '');
  test($opcode, r32(), '');
  test($opcode, r64(), '');
  test($opcode, m16(), '');
}

// -----------------------------------------------------------------------------
// sgdt m80
// sidt m80
// lgdt m48
// lidt m48
// invlpg m
// -----------------------------------------------------------------------------

$pool = ['sgdt', 'sidt', 'lgdt', 'lidt', 'invlpg'];

foreach ($pool as $opcode)
{
  suite('TODO: '.$opcode);

  // Check number of operands.
  test($opcode,                      'not enough operands');
  test($opcode, r16(), r16(),        'too many operands');
  test($opcode, r16(), r16(), r16(), 'too many operands');

  // Bad operand.
  test($opcode, i16(), "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, mcustom(), '');
}

// -----------------------------------------------------------------------------
// sldt r16 | r64 | m16
// -----------------------------------------------------------------------------

suite('TODO: sldt');

// Check number of operands.
test('sldt',                      'not enough operands');
test('sldt', r16(), r16(),        'too many operands');
test('sldt', r16(), r16(), r16(), 'too many operands');

// Bad operand.
test('sldt', i16(), "immediate operand not allowed for: 'sldt'");

// Good examples (should assemble without error).
test('sldt', r16(), '');
test('sldt', r64(), '');
test('sldt', m16(), '');

// -----------------------------------------------------------------------------
// Bit scan family: bt, btc, btr, bts.
// rd,rd
// md,rd
// -----------------------------------------------------------------------------

$pool = ['bt', 'btc', 'btr', 'bts'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                      'not enough operands');
  test($opcode, r32(),               'not enough operands');
  test($opcode, r32(), r32(), i32(), 'too many operands');

  // Bad operands.
  test($opcode, r8(), r8()   , "8-bit operands not allowed for: '$opcode'");
  test($opcode, r32(), m32() , "memory address cannot be used as the second operand for: '$opcode'");
  test($opcode, r32(), i8()  , "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r16(), r16(), '');
  test($opcode, r32(), r32(), '');
  test($opcode, r64(), r64(), '');

  test($opcode, m16(), r16(), '');
  test($opcode, m32(), r32(), '');
  test($opcode, m64(), r64(), '');
}

// -----------------------------------------------------------------------------
// lfs rd,md-far
// lgs rd,md-far
// lss rd,md-far
// -----------------------------------------------------------------------------

$pool = ['lfs', 'lgs', 'lss'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                      'not enough operands');
  test($opcode, r32(),               'not enough operands');
  test($opcode, r32(), r32(), i32(), 'too many operands');

  // Bad operands.
  test($opcode, r8(), r8()   , "8-bit operands not allowed for: '$opcode'");
  test($opcode, m32(), r32() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, r32(), i8()  , "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r16(), mcustom(), '');
  test($opcode, r32(), mcustom(), '');
  test($opcode, r64(), mcustom(), '');
}

// -----------------------------------------------------------------------------
// movsx/movzx rd,r8
// movsx/movzx rd,m8
// movsx/movzx r32,r16
// movsx/movzx r32,m16
// movsx/movzx r64,r16
// movsx/movzx r64,m16
// -----------------------------------------------------------------------------

$pool = ['movsx', 'movzx'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(),              'not enough operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operands type.
  test($opcode, r32(), i8() , "immediate operand not allowed for: '$opcode'");
  test($opcode, m32(), r32(), "memory address cannot be destination operand for: '$opcode'");

  // Bad operands size (destination must be wider than source).
  test($opcode, r8() , r8() , "operand does not match the statement for: '$opcode'");
  test($opcode, r16(), r16(), "operand does not match the statement for: '$opcode'");
  test($opcode, r32(), m32(), "operand does not match the statement for: '$opcode'");
  test($opcode, r64(), r32(), "operand does not match the statement for: '$opcode'");
  test($opcode, r8() , r16(), "operand does not match the statement for: '$opcode'");
  test($opcode, r8() , r32(), "operand does not match the statement for: '$opcode'");
  test($opcode, r8() , r64(), "operand does not match the statement for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r16(), r8(), '');
  test($opcode, r16(), m8(), '');

  test($opcode, r32(), r8() , '');
  test($opcode, r32(), r16(), '');
  test($opcode, r32(), m8() , '');
  test($opcode, r32(), m16(), '');

  test($opcode, r64(), r8() , '');
  test($opcode, r64(), r16(), '');
  test($opcode, r64(), m8() , '');
  test($opcode, r64(), m16(), '');
}

// -----------------------------------------------------------------------------
// shld/shrd rd,rd,cl
// shld/shrd rd,rd,imm8
// shld/shrd md,rd,cl
// shld/shrd md,rd,imm8
// -----------------------------------------------------------------------------

$pool = ['shld', 'shrd'];

foreach ($pool as $opcode)
{
  suite('TODO: '.$opcode);
}

// -----------------------------------------------------------------------------
// setcc r8 | m8
// -----------------------------------------------------------------------------

$pool = [
  'seta'  , 'setae' , 'setb'  , 'setbe' , 'setc'  , 'sete'  , 'setg' , 'setge',
  'setl'  , 'setle' , 'setna' , 'setnae', 'setnb' , 'setnbe', 'setnc', 'setne',
  'setng' , 'setnge', 'setnl' , 'setnle', 'setno' , 'setnp' , 'setns', 'setnz',
  'seto'  , 'setp'  , 'setpe' , 'setpo' , 'sets'  , 'setz'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(), r32()      , 'too many operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operand.
  test($opcode, i8() , "immediate operand not allowed for: '$opcode'");
  test($opcode, r16(), "only 8-bit operands are allowed for: '$opcode'");
  test($opcode, r32(), "only 8-bit operands are allowed for: '$opcode'");
  test($opcode, r64(), "only 8-bit operands are allowed for: '$opcode'");
  test($opcode, m16(), "only 8-bit operands are allowed for: '$opcode'");
  test($opcode, m16(), "only 8-bit operands are allowed for: '$opcode'");
  test($opcode, m64(), "only 8-bit operands are allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r8(), '');
  test($opcode, m8(), '');
}

// -----------------------------------------------------------------------------
// bswap r32 | r64
// -----------------------------------------------------------------------------

suite('bswap');

// Check number of operands.
test('bswap',               'not enough operands');
test('bswap', r32(), r32(), 'too many operands');

// Bad operand.
test('bswap', i8() , "immediate operand not allowed for: 'bswap'");
test('bswap', m8() , "memory operands not allowed for: 'bswap'");
test('bswap', m16(), "memory operands not allowed for: 'bswap'");

test('bswap', r8() , "operand does not match the statement for: 'bswap'");
test('bswap', r16(), "operand does not match the statement for: 'bswap'");

// Good examples (should assemble without error).
test('bswap', r32(), '');
test('bswap', r64(), '');

// -----------------------------------------------------------------------------
// cmpxchg r,r | m,r
// xadd    r,r | m,r
// -----------------------------------------------------------------------------

$pool = ['cmpxchg', 'xadd'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(),              'not enough operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operand.
  test($opcode, r32(), i8()  , "immediate operand not allowed for: '$opcode'");
  test($opcode, r64(), m64() , "memory address cannot be used as the second operand for: '$opcode'");
  test($opcode, r32(), r64() , "operand sizes do not match");
  test($opcode, r64(), m16() , "operand sizes do not match");

  // Good examples (should assemble without error).
  test($opcode, r8() , r8(), '');
  test($opcode, r16(), r16(), '');
  test($opcode, r32(), r32(), '');
  test($opcode, r64(), r64(), '');

  test($opcode, m8() , r8(), '');
  test($opcode, m16(), r16(), '');
  test($opcode, m32(), r32(), '');
  test($opcode, m64(), r64(), '');
}

// -----------------------------------------------------------------------------
// cmpxchg8b  m64
// cmpxchg16b m128
// -----------------------------------------------------------------------------

$pool = ['cmpxchg8b', 'cmpxchg16b'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(), r32(),       'too many operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operand.
  test($opcode, i8()  , "immediate operand not allowed for: '$opcode'");
  test($opcode, r64() , "register operands not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, mcustom(), '');
}

// -----------------------------------------------------------------------------
// cmovcc: rd,rd | rd,md
// -----------------------------------------------------------------------------

$pool = [
  'cmovae'  , 'cmovb'  , 'cmovbe' , 'cmovc'  , 'cmove'   , 'cmovg'  ,
  'cmovge'  , 'cmovl'  , 'cmovle' , 'cmovna' , 'cmovnae' , 'cmovnb' ,
  'cmovnbe' , 'cmovnc' , 'cmovne' , 'cmovng' , 'cmovnge' , 'cmovnl' ,
  'cmovnle' , 'cmovno' , 'cmovnp' , 'cmovns' , 'cmovnz'  , 'cmovo'  ,
  'cmovp'   , 'cmovpe' , 'cmovpo' , 'cmovs'  , 'cmovz'   , 'bsf'    ,
  'bsr'];



foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(),              'not enough operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operands.
  test($opcode, r8() , r8()  , "8-bit operands not allowed for: '$opcode'");
  test($opcode, m32(), r32() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, r32(), i8()  , "immediate operand not allowed for: '$opcode'");
  test($opcode, r64(), r32() , "operand sizes do not match");
  test($opcode, r64(), r16() , "operand sizes do not match");
  test($opcode, r64(), r8()  , "operand sizes do not match");
  test($opcode, r32(), m16() , "operand sizes do not match");
  test($opcode, r32(), m8()  , "operand sizes do not match");
  test($opcode, r16(), m8()  , "operand sizes do not match");

  // Good examples (should assemble without error).
  test($opcode, r16(), r16(), '');
  test($opcode, r32(), r32(), '');
  test($opcode, r64(), r64(), '');

  test($opcode, r16(), m16(), '');
  test($opcode, r32(), m32(), '');
  test($opcode, r64(), m64(), '');
}

// -----------------------------------------------------------------------------
// movsxd: r64,r32 | r64,m32
// -----------------------------------------------------------------------------

suite('movsxd');

// Check number of operands.
test('movsxd',                     'not enough operands');
test('movsxd', r64(),              'not enough operands');
test('movsxd', r64(), r32(), i8(), 'too many operands');

// Bad operand type.
test('movsxd', r64(), i8()  , "immediate operand not allowed for: 'movsxd'");
test('movsxd', m64(), r32() , "memory address cannot be destination operand for: 'movsxd'");

// Bad destination size.
test('movsxd', r8() , r32() , "operand does not match the statement for: 'movsxd'");
test('movsxd', r16(), r32() , "operand does not match the statement for: 'movsxd'");
test('movsxd', r32(), r32() , "operand does not match the statement for: 'movsxd'");

// Bad source size.
test('movsxd', r64(), r8()  , "operand does not match the statement for: 'movsxd'");
test('movsxd', r64(), r16() , "operand does not match the statement for: 'movsxd'");
test('movsxd', r64(), r64() , "operand does not match the statement for: 'movsxd'");
test('movsxd', r64(), m8()  , "operand does not match the statement for: 'movsxd'");
test('movsxd', r64(), m16() , "operand does not match the statement for: 'movsxd'");
test('movsxd', r64(), m64() , "operand does not match the statement for: 'movsxd'");

// Good examples (should assemble without error).
test('movsxd', r64(), r32() , '');
test('movsxd', r64(), m32() , '');

// -----------------------------------------------------------------------------
// jcc rel8/rel32
// -----------------------------------------------------------------------------

head('CORE-JUMPS OPCODES');

$pool = [
  'jo', 'jno', 'jb' , 'jae', 'jz' , 'je', 'jnz', 'jne', 'jbe',
  'ja', 'js' , 'jns', 'jp' , 'jnp', 'jl', 'jge', 'jle', 'jg'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(), r32(),       'too many operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operand.
  test($opcode, r8(), "immediate operand expected for: '$opcode'");
  test($opcode, m8(), "immediate operand expected for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, i8() , '');
  test($opcode, i32(), '');
}

// -----------------------------------------------------------------------------
// jcc rel8
// -----------------------------------------------------------------------------

$pool = [
  'loop'  , 'loopz'  , 'loopnz'  , 'loope'  , 'loopne'  , 'jrcxz',
  'loopd' , 'loopzd' , 'loopnzd' , 'looped' , 'loopned' , 'jecxz'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(), r32(),       'too many operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operand.
  test($opcode, r8(), "immediate operand expected for: '$opcode'");
  test($opcode, m8(), "immediate operand expected for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, i8() , '');
}

// -----------------------------------------------------------------------------
// jmp/call r16/64
// jmp/call m16/64
// call     rel32
// jmp      rel8/rel16/rel32
// -----------------------------------------------------------------------------

$pool = ['jmp', 'call'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode,                     'not enough operands');
  test($opcode, r32(), r32(),       'too many operands');
  test($opcode, r32(), r32(), i8(), 'too many operands');

  // Bad operand.
  test($opcode, r8() , "8/32-bit addresses not allowed for: '$opcode'");
  test($opcode, r32(), "8/32-bit addresses not allowed for: '$opcode'");
  test($opcode, m8() , "8/32-bit addresses not allowed for: '$opcode'");
  test($opcode, m32(), "8/32-bit addresses not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r16() , '');
  test($opcode, r64() , '');
  test($opcode, m16() , '');
  test($opcode, m64() , '');
  test($opcode, i32() , '');
}

head('FPU OPCODES (X87)');

// -----------------------------------------------------------------------------
// FPU: Zero operands opcodes.
// -----------------------------------------------------------------------------

suite('FPU: Zero operand opcodes');

$pool = [
  'f2xm1'  , 'fabs'   , 'fchs'    , 'fcompp'  , 'fdecstp' , 'fincstp' ,
  'fld1'   , 'fldl2e' , 'fldl2t'  , 'fldlg2'  , 'fldln2'  , 'fldpi'   ,
  'fldz'   , 'fnclex' , 'fninit'  , 'fclex'   , 'finit'   , 'fnop'    ,
  'fpatan' , 'fprem'  , 'fptan'   , 'frndint' , 'fscale'  , 'fsqrt'   ,
  'ftst'   , 'fwait'  , 'fxam'    , 'fxtract' , 'fyl2x'   , 'fyl2xp1' ,
  'fsin'   , 'fcos'   , 'fsincos' , 'fprem1'  , 'fucompp'];

foreach ($pool as $opcode)
{
  // Check number of operands.
  test($opcode, sti(),               'too many operands');
  test($opcode, st0(), sti(),        'too many operands');
  test($opcode, st0(), st0(), sti(), 'too many operands');
}

// -----------------------------------------------------------------------------
// FPU: Real-real arithmetic: x o y.
// m32 | m64 | st0,sti | sti,st0
// -----------------------------------------------------------------------------

$pool = ['fadd', 'fdiv', 'fdivr', 'fmul', 'fsub', 'fsubr'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode                      , 'not enough operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand: non-memory.
  test($opcode, sti() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, i8()  , "operand does not match the statement for: '$opcode'");

  // Bad operand: wrong memory size.
  test($opcode, m8()  , "invalid operand size for: '$opcode'");
  test($opcode, m80() , "invalid operand size for: '$opcode'");

  // Bad operand (two args).
  test($opcode, sti() , sti(), "operand does not match the statement for: '$opcode'");
  test($opcode, st0() , i16(), "operand does not match the statement for: '$opcode'");
  test($opcode, st0() , r32(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti() , sti(), "operand does not match the statement for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, m32(), '');
  test($opcode, m64(), '');
  test($opcode, st0(), st0(), '');
  test($opcode, st0(), sti(), '');
  test($opcode, sti(), st0(), '');
}

// -----------------------------------------------------------------------------
// FPU: Real-real arithmetic and pop: x o y.
// - | sti,st0
// -----------------------------------------------------------------------------

$pool = ['faddp', 'fdivp', 'fdivrp', 'fmulp', 'fsubp', 'fsubrp'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode, st0()               , "operand does not match the statement for: '$opcode'");
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand.
  test($opcode, st0(), sti(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti(), sti(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti(), r16(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti(), i32(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti(), m64(), "operand does not match the statement for: '$opcode'");
  test($opcode, r16(), st0(), "operand does not match the statement for: '$opcode'");
  test($opcode, m32(), st0(), "operand does not match the statement for: '$opcode'");

  // Bad operand (two args).
  test($opcode, sti() , sti(), "operand does not match the statement for: '$opcode'");
  test($opcode, st0() , i16(), "operand does not match the statement for: '$opcode'");
  test($opcode, st0() , r32(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti() , sti(), "operand does not match the statement for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, '');
  test($opcode, st0(), st0(), '');
  test($opcode, sti(), st0(), '');
}

// -----------------------------------------------------------------------------
// FPU: Real-integer arithmetic: x o y.
// m16 | m32
// -----------------------------------------------------------------------------

$pool = [
  'fiadd', 'fidiv', 'fidivr', 'fimul', 'fisub', 'fisubr',
  'fist' , 'ficom', 'ficomp'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode                      , 'not enough operands');
  test($opcode, st0(), st0()        , 'too many operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand: non-memory.
  test($opcode, sti() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, i8()  , "operand does not match the statement for: '$opcode'");

  // Bad operand: wrong memory size.
  test($opcode, m8()      , "invalid operand size for: '$opcode'");
  test($opcode, m64()     , "invalid operand size for: '$opcode'");
  test($opcode, m80()     , "invalid operand size for: '$opcode'");
  test($opcode, mcustom() , "ambiguous operand size for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, m16(), '');
  test($opcode, m32(), '');
}

// -----------------------------------------------------------------------------
// FPU: Opcodes added with Pentium Pro:
// fcmovcc st0,sti
// fcomi   st0,sti
// fcomip  st0,sti
// fucomi  st0,sti
// fucomip st0,sti
// -----------------------------------------------------------------------------

$pool = [
  'fcmovb' , 'fcmovbe', 'fcmove', 'fcmovnb', 'fcmovnbe', 'fcmovne',
  'fcmovnu', 'fcmovu' , 'fcomi' , 'fcomip' , 'fucomi'  , 'fucomip'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode, st0()               , 'not enough operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand.
  test($opcode, sti(), sti(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti(), r16(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti(), i32(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti(), m64(), "operand does not match the statement for: '$opcode'");
  test($opcode, r16(), st0(), "operand does not match the statement for: '$opcode'");
  test($opcode, m32(), st0(), "operand does not match the statement for: '$opcode'");

  // Bad operand (two args).
  test($opcode, sti() , sti(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti() , st0(), "operand does not match the statement for: '$opcode'");
  test($opcode, st0() , i16(), "operand does not match the statement for: '$opcode'");
  test($opcode, st0() , r32(), "operand does not match the statement for: '$opcode'");
  test($opcode, sti() , sti(), "operand does not match the statement for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, st0(), st0(), '');
  test($opcode, st0(), sti(), '');
}

// -----------------------------------------------------------------------------
// FPU: State management.
// -----------------------------------------------------------------------------

$pool = [
  'frstor'  , 'fsave'   , 'fnsave'  , 'fnstenv' , 'fnstenvw' , 'fstenv',
  'fldenv'  , 'fldenvw' , 'fnsavew' , 'frstorw' , 'fsavew'   , 'fstenvw',
  'fldenvd' , 'fsaved'  , 'fstenvd' , 'frstord' , 'fstenvd'  , 'fxrstor',
  'fxsave'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode                      , 'not enough operands');
  test($opcode, st0(), st0()        , 'too many operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand type.
  test($opcode, sti() , "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, i32() , "operand does not match the statement for: '$opcode'");

  // Bad operand size.
  test($opcode, m8()  , "invalid operand size for: '$opcode'");
  test($opcode, m16() , "invalid operand size for: '$opcode'");
  test($opcode, m32() , "invalid operand size for: '$opcode'");
  test($opcode, m64() , "invalid operand size for: '$opcode'");
  test($opcode, m80() , "invalid operand size for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, mcustom(), '');
}

// -----------------------------------------------------------------------------
// FPU: Real load / store.
// fld  m32 | m64 | m80 | sti
// fstp m32 | m64 | m80 | sti
// fst  m32 | m64 |       sti
// -----------------------------------------------------------------------------

$pool = ['fld', 'fst', 'fstp'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode                      , 'not enough operands');
  test($opcode, st0(), st0()        , 'too many operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand type.
  test($opcode, r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, i32() , "operand does not match the statement for: '$opcode'");

  // Bad operand size.
  test($opcode, m8()      , "invalid operand size for: '$opcode'");
  test($opcode, m16()     , "invalid operand size for: '$opcode'");
  test($opcode, mcustom() , "ambiguous operand size for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, m32(), '');
  test($opcode, m64(), '');
  test($opcode, sti(), '');
}

// Good examples with 80-bit long double.
suite('FPU: Real load/store 80-bit');
test('fld' , m80(), '');
test('fstp', m80(), '');
test('fst' , m80(), "invalid operand size for: 'fst'");

// -----------------------------------------------------------------------------
// FPU: Integer load / store.
// fild   md
// fistp  md
// fisttp md
// -----------------------------------------------------------------------------

$pool = ['fild', 'fistp', 'fisttp'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode                      , 'not enough operands');
  test($opcode, st0(), st0()        , 'too many operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand type.
  test($opcode, r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, i32() , "operand does not match the statement for: '$opcode'");
  test($opcode, sti() , "operand does not match the statement for: '$opcode'");

  // Bad operand size.
  test($opcode, m8()      , "invalid operand size for: '$opcode'");
  test($opcode, m80()     , "invalid operand size for: '$opcode'");
  test($opcode, mcustom() , "ambiguous operand size for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, m16(), '');
  test($opcode, m32(), '');
  test($opcode, m64(), '');
}

// -----------------------------------------------------------------------------
// FPU: fcom(p)
// fcom  - | m32 | m64 | sti
// fcomp - | m32 | m64 | sti
// -----------------------------------------------------------------------------

$pool = ['fcom', 'fcomp'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode, st0(), st0()        , "operand does not match the statement for: '$opcode'");
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand type.
  test($opcode, r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, i32() , "operand does not match the statement for: '$opcode'");

  // Bad operand size.
  test($opcode, m8()      , "invalid operand size for: '$opcode'");
  test($opcode, m16()     , "invalid operand size for: '$opcode'");
  test($opcode, m80()     , "invalid operand size for: '$opcode'");
  test($opcode, mcustom() , "ambiguous operand size for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, m32(), '');
  test($opcode, m64(), '');
  test($opcode, sti(), '');
}

// -----------------------------------------------------------------------------
// FPU:
// fxch   - | sti
// fucom  - | sti
// fucomp - | sti
// -----------------------------------------------------------------------------

$pool = ['fxch', 'fucomp', 'fucomp'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode, st0(), st0()        , "operand does not match the statement for: '$opcode'");
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand type.
  test($opcode, r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, i32() , "operand does not match the statement for: '$opcode'");
  test($opcode, m64() , "operand does not match the statement for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, '');
  test($opcode, sti(), '');
}

// -----------------------------------------------------------------------------
// FPU:
// fnstsw ax | m16
// fstsw  ax | m16
// fnstcw m16
// fldcw  m16
// fstcw  m16
// -----------------------------------------------------------------------------

$pool = ['fnstsw', 'fstsw', 'fnstcw', 'fldcw', 'fstcw'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode                      , 'not enough operands');
  test($opcode, st0(), st0()        , 'too many operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand type.
  test($opcode, r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, i32() , "operand does not match the statement for: '$opcode'");

  // Bad operand size.
  test($opcode, m8()      , "invalid operand size for: '$opcode'");
  test($opcode, m32()     , "invalid operand size for: '$opcode'");
  test($opcode, m64()     , "invalid operand size for: '$opcode'");
  test($opcode, m80()     , "invalid operand size for: '$opcode'");
  test($opcode, mcustom() , "ambiguous operand size for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, m16(), '');
}

// Good examples with ax register (should assemble without errors).
suite('FPU: f(n)stsw ax');
test('fnstsw', 'ax', '');
test('fstsw' , 'ax', '');

// -----------------------------------------------------------------------------
// FPU: Load/store BCD
// fbld  m80
// fbstp m80
// -----------------------------------------------------------------------------

$pool = ['fbld', 'fbstp'];

foreach ($pool as $opcode)
{
  suite($opcode);

  // Check number of operands.
  test($opcode                      , 'not enough operands');
  test($opcode, st0(), st0()        , 'too many operands');
  test($opcode, st0(), st0(), sti() , 'too many operands');

  // Bad operand type.
  test($opcode, r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, i32() , "operand does not match the statement for: '$opcode'");
  test($opcode, sti() , "operand does not match the statement for: '$opcode'");

  // Bad operand size.
  test($opcode, m8()      , "invalid operand size for: '$opcode'");
  test($opcode, m16()     , "invalid operand size for: '$opcode'");
  test($opcode, m32()     , "invalid operand size for: '$opcode'");
  test($opcode, m64()     , "invalid operand size for: '$opcode'");
  test($opcode, mcustom() , "ambiguous operand size for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, m80(), '');
}

// -----------------------------------------------------------------------------
// FPU: ffree sti
// -----------------------------------------------------------------------------

suite('ffree');

// Check number of operands.
test('ffree'                      , 'not enough operands');
test('ffree', st0(), st0()        , 'too many operands');
test('ffree', st0(), st0(), sti() , 'too many operands');

// Bad operand type.
test('ffree', i16() , "operand does not match the statement for: 'ffree'");
test('ffree', r32() , "operand does not match the statement for: 'ffree'");
test('ffree', m64() , "operand does not match the statement for: 'ffree'");

// Good examples (should assemble without error).
test('ffree', sti(), '');

// -----------------------------------------------------------------------------
//                                MMX Opcodes
// -----------------------------------------------------------------------------

head('MMX Technology');

// -----------------------------------------------------------------------------
// MMX: opcode mm,mm
// MMX: opcode mm,m64
//
// Original instruction set instroduced with Pentum MMX:
//   packssdw  mm,mm | mm,m64
//   packsswb  mm,mm | mm,m64
//   packuswb  mm,mm | mm,m64
//
//   paddb     mm,mm | mm,m64
//   paddw     mm,mm | mm,m64
//   paddd     mm,mm | mm,m64
//   paddq     mm,mm | mm,m64
//   paddsb    mm,mm | mm,m64
//   paddsw    mm,mm | mm,m64
//   paddusb   mm,mm | mm,m64
//   paddusw   mm,mm | mm,m64
//   pmaddwd   mm,mm | mm,m64
//
//   pand      mm,mm | mm,m64
//   pandn     mm,mm | mm,m64
//   por       mm,mm | mm,m64
//   pxor      mm,mm | mm,m64
//
//   pcmpeqb   mm,mm | mm,m64
//   pcmpeqw   mm,mm | mm,m64
//   pcmpeqd   mm,mm | mm,m64
//   pcmpgtb   mm,mm | mm,m64
//   pcmpgtw   mm,mm | mm,m64
//   pcmpgtd   mm,mm | mm,m64
//
//   pmulhw    mm,mm | mm,m64
//   pmullw    mm,mm | mm,m64
//
//   psubb     mm,mm | mm,m64
//   psubw     mm,mm | mm,m64
//   psubd     mm,mm | mm,m64
//   psubsb    mm,mm | mm,m64
//   psubsw    mm,mm | mm,m64
//   psubusb   mm,mm | mm,m64
//   psubusw   mm,mm | mm,m64
//
//   punpcklbw mm,mm | mm,m64
//   punpcklwd mm,mm | mm,m64
//   punpckldq mm,mm | mm,m64
//
//   punpckhbw mm,mm | mm,m64
//   punpckhwd mm,mm | mm,m64
//   punpckhdq mm,mm | mm,m64
//
// Instructions added with SSE:
//   pminub   mm,mm | mm,m64
//   pmaxub   mm,mm | mm,m64
//   pavgb    mm,mm | mm,m64
//   pavgw    mm,mm | mm,m64
//   pmulhuw  mm,mm | mm,m64
//   pminsw   mm,mm | mm,m64
//   pmaxsw   mm,mm | mm,m64
//   psadbw   mm,mm | mm,m64
//
// Instructions added with SSE2:
//   psubq    mm,mm | mm,m64
//   pmuludq  mm,mm | mm,m64
//
// Instructions added with SSE3:
//   psignb    mm,mm | mm,m64
//   psignw    mm,mm | mm,m64
//   psignd    mm,mm | mm,m64
//   pshufb    mm,mm | mm,m64
//   pmulhrsw  mm,mm | mm,m64
//   pmaddubsw mm,mm | mm,m64
//   phsubw    mm,mm | mm,m64
//   phsubsw   mm,mm | mm,m64
//   phsubd    mm,mm | mm,m64
//   phaddsw   mm,mm | mm,m64
//   phaddw    mm,mm | mm,m64
//   phaddd    mm,mm | mm,m64
//   pabsb     mm,mm | mm,m64
//   pabsw     mm,mm | mm,m64
//   pabsd     mm,mm | mm,m64
// -----------------------------------------------------------------------------

$pool = [
  'packssdw', 'packsswb', 'packuswb', 'paddb'   , 'paddw'   , 'paddd',
  'paddq'   , 'paddsb'  , 'paddsw'  , 'paddusb' , 'paddusw' ,
  'pmaddwd' , 'pand'    , 'pandn'   , 'por'     , 'pxor'    ,

  'pcmpeqb' , 'pcmpeqw' , 'pcmpeqd' , 'pcmpgtb' , 'pcmpgtw' , 'pcmpgtd',
  'pmulhw'  , 'pmullw'  ,

  'psubb'   , 'psubw'   , 'psubd'   , 'psubsb'  , 'psubsw'  , 'psubusb',
  'psubusw' ,

  'punpckhbw' , 'punpckhwd' , 'punpckhdq',
  'punpcklbw' , 'punpcklwd' , 'punpckldq',

  'pminub' , 'pmaxub' , 'pavgb' , 'pavgw'   , 'pmulhuw' , 'pminsw',
  'pmaxsw' , 'psadbw' , 'psubq' , 'pmuludq' ,

  'psignb' , 'psignw'  , 'psignd' , 'pshufb'  , 'pmulhrsw' , 'pmaddubsw',
  'phsubw' , 'phsubsw' , 'phsubd' , 'phaddsw' , 'phaddw'   , 'phaddd',
  'pabsb'  , 'pabsw'   , 'pabsd'
];

foreach ($pool as $opcode) {
  suite($opcode);

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, mm(),             'not enough operands');
  test($opcode, mm(), mm(), mm(), 'too many operands');

  // Bad first operand type.
  test($opcode, r8()  , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , mm() , "operand does not match the statement for: '$opcode'");

  test($opcode, r8()  , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , mm() , "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , mm() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m16() , mm() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m32() , mm() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m64() , mm() , "memory address cannot be destination operand for: '$opcode'");

  // Bad second operand type.
  test($opcode, mm() , i8()  , "immediate operand not allowed for: '$opcode'");
  test($opcode, mm() , i16() , "immediate operand not allowed for: '$opcode'");
  test($opcode, mm() , i32() , "immediate operand not allowed for: '$opcode'");

  // Bad operand size (64-bit expected).
  test($opcode, mm() , m8()  , "only 64-bit data allowed for: '$opcode'");
  test($opcode, mm() , m16() , "only 64-bit data allowed for: '$opcode'");
  test($opcode, mm() , m32() , "only 64-bit data allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, mm() , mm()  , '');
  test($opcode, mm() , m64() , '');
}

// -----------------------------------------------------------------------------
// MMX: opcode mm,mm
// MMX: opcode mm,m64
// MMX: opcode mm,imm8
//
// psllw mm,mm | mm,m64 | mm,imm8
// pslld mm,mm | mm,m64 | mm,imm8
// psllq mm,mm | mm,m64 | mm,imm8
// psrad mm,mm | mm,m64 | mm,imm8
// psraw mm,mm | mm,m64 | mm,imm8
// psrlw mm,mm | mm,m64 | mm,imm8
// psrld mm,mm | mm,m64 | mm,imm8
// psrlq mm,mm | mm,m64 | mm,imm8
// -----------------------------------------------------------------------------

$pool = [
  'psllw', 'pslld', 'psllq', 'psrad', 'psraw',
  'psrlw', 'psrld', 'psrlq',
];

foreach ($pool as $opcode) {
  suite($opcode);

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, mm(),             'not enough operands');
  test($opcode, mm(), mm(), mm(), 'too many operands');

  // Bad first operand type.
  test($opcode, r8()  , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , mm() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , mm() , "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , mm() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m16() , mm() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m32() , mm() , "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m64() , mm() , "memory address cannot be destination operand for: '$opcode'");

  // Bad second operand type.
  test($opcode, mm(), r8()  , "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r64() , "operand does not match the statement for: '$opcode'");

  // Bad operand size (64-bit expected).
  test($opcode, mm() , m8()  , "only 64-bit data allowed for: '$opcode'");
  test($opcode, mm() , m16() , "only 64-bit data allowed for: '$opcode'");
  test($opcode, mm() , m32() , "only 64-bit data allowed for: '$opcode'");

  test($opcode, mm() , i16() , "value out of range");
  test($opcode, mm() , i32() , "value out of range");

  // Good examples (should assemble without error).
  test($opcode, mm() , mm()  , '');
  test($opcode, mm() , m64() , '');
  test($opcode, mm() , u8()  , '');
}

// -----------------------------------------------------------------------------
// MMX: pshufw   mm,mm,imm8 | mm,m64,imm8
// MMX: palignr  mm,mm,imm8 | mm,m64,imm8
// -----------------------------------------------------------------------------

$pool = ['pshufw', 'palignr'];

foreach ($pool as $opcode) {
  suite($opcode);

  // Check number of operands.
  test($opcode,             'not enough operands');
  test($opcode, mm(),       'not enough operands');
  test($opcode, mm(), mm(), 'not enough operands');

  // Bad first operand type.
  test($opcode, r8()  , mm() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , mm() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , mm() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , mm() , u8(), "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , mm() , u8(), "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m16() , mm() , u8(), "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m32() , mm() , u8(), "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m64() , mm() , u8(), "memory address cannot be destination operand for: '$opcode'");

  // Bad second operand type.
  test($opcode, mm(), r8()  , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r16() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r32() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r64() , u8(), "operand does not match the statement for: '$opcode'");

  // Bad third operand type.
  test($opcode, mm(), mm() , r8()  , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), mm() , r16() , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), mm() , r32() , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), mm() , r64() , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), mm() , m8()  , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), mm() , m16() , "immediate operand expected for: '$opcode'");

  // Bad operand size (64-bit expected).
  test($opcode, mm() , m8()  , u8(), "only 64-bit data allowed for: '$opcode'");
  test($opcode, mm() , m16() , u8(), "only 64-bit data allowed for: '$opcode'");
  test($opcode, mm() , m32() , u8(), "only 64-bit data allowed for: '$opcode'");

  test($opcode, mm() , mm() , i16(), "value out of range");
  test($opcode, mm() , mm() , i32(), "value out of range");

  // Good examples (should assemble without error).
  test($opcode, mm() , mm()  , u8(), '');
  test($opcode, mm() , m64() , u8(), '');
}

// ------------------------------------------------------------------------------
// MMX: pinsrw mm,r32,imm8
// MMX: pinsrw mm,m16,imm8
// ------------------------------------------------------------------------------

suite('pinsrw');

  $opcode = 'pinsrw';

  // Check number of operands.
  test($opcode,             'not enough operands');
  test($opcode, mm(),       'not enough operands');
  test($opcode, mm(), mm(), 'not enough operands');

  // Bad first operand type.
  test($opcode, r8()  , r32() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , r32() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r32() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , r32() , u8(), "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , r32() , u8(), "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m16() , r32() , u8(), "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m32() , r32() , u8(), "memory address cannot be destination operand for: '$opcode'");
  test($opcode, m64() , r32() , u8(), "memory address cannot be destination operand for: '$opcode'");

  // Bad second operand type.
  test($opcode, mm(), r8()  , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r16() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), r64() , u8(), "operand does not match the statement for: '$opcode'");

  test($opcode, mm(), m8()  , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), m32() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, mm(), m64() , u8(), "operand does not match the statement for: '$opcode'");

  // Bad third operand type.
  test($opcode, mm(), r32() , r8()  , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), r32() , r16() , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), r32() , r32() , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), r32() , r64() , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), r32() , m8()  , "immediate operand expected for: '$opcode'");
  test($opcode, mm(), r32() , m16() , "immediate operand expected for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, mm() , r32() , u8(), '');
  test($opcode, mm() , m16() , u8(), '');

// ------------------------------------------------------------------------------
// MMX: pextrw r32,mm,imm8
// MMX: pextrw r64,mm,imm8
// ------------------------------------------------------------------------------

suite('pextrw');

  $opcode = 'pextrw';

  // Check number of operands.
  test($opcode,             'not enough operands');
  test($opcode, mm(),       'not enough operands');
  test($opcode, mm(), mm(), 'not enough operands');

  // Bad first operand type.
  test($opcode, r8()  , mm() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , mm() , u8(), "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , mm() , u8(), "memory operands not allowed for: '$opcode'");
  test($opcode, m32() , mm() , u8(), "memory operands not allowed for: '$opcode'");
  test($opcode, m64() , mm() , u8(), "memory operands not allowed for: '$opcode'");

  // Bad second operand.
  test($opcode, r32() , r8()  , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r16() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r32() , u8(), "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r64() , u8(), "operand does not match the statement for: '$opcode'");

  test($opcode, r32() , m8()  , u8(), "memory operands not allowed for: '$opcode'");
  test($opcode, r32() , m16() , u8(), "memory operands not allowed for: '$opcode'");
  test($opcode, r32() , m32() , u8(), "memory operands not allowed for: '$opcode'");
  test($opcode, r32() , m64() , u8(), "memory operands not allowed for: '$opcode'");

  // Bad third operand type.
  test($opcode, r32() , mm() , r8()  , "immediate operand expected for: '$opcode'");
  test($opcode, r32() , mm() , r16() , "immediate operand expected for: '$opcode'");
  test($opcode, r32() , mm() , r32() , "immediate operand expected for: '$opcode'");
  test($opcode, r32() , mm() , r64() , "immediate operand expected for: '$opcode'");
  test($opcode, r32() , mm() , m8()  , "memory operands not allowed for: '$opcode'");
  test($opcode, r32() , mm() , m16() , "memory operands not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r32() , mm() , u8(), '');
  test($opcode, r64() , mm() , u8(), '');

// ------------------------------------------------------------------------------
// MMX: pmovmskb r32,mm
// MMX: pmovmskb r64,mm
// ------------------------------------------------------------------------------

suite('pmovmskb');

  $opcode = 'pmovmskb';

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, mm(),             'not enough operands');
  test($opcode, mm(), mm(), mm(), 'too many operands');

  // Bad first operand.
  test($opcode, r8()  , mm(),  "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , mm(),  "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , mm(), "memory operands not allowed for: '$opcode'");
  test($opcode, m16() , mm(), "memory operands not allowed for: '$opcode'");
  test($opcode, m32() , mm(), "memory operands not allowed for: '$opcode'");
  test($opcode, m64() , mm(), "memory operands not allowed for: '$opcode'");

  // Bad second operand.
  test($opcode, r32() , r8()  , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r64() , "operand does not match the statement for: '$opcode'");

  test($opcode, r32() , m8()  , "memory operands not allowed for: '$opcode'");
  test($opcode, r32() , m16() , "memory operands not allowed for: '$opcode'");
  test($opcode, r32() , m32() , "memory operands not allowed for: '$opcode'");
  test($opcode, r32() , m64() , "memory operands not allowed for: '$opcode'");

  test($opcode, r32() , u8()  , "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, r32(), mm(), '');
  test($opcode, r64(), mm(), '');

// ------------------------------------------------------------------------------
// MMX: movd  mm,r32
// MMX: movd  mm,m32
// MMX: movd  r32,mm
// MMX: movd  m32,mm
// ------------------------------------------------------------------------------

suite('movd');
  $opcode = 'movd';

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, mm(),             'not enough operands');
  test($opcode, mm(), mm(), mm(), 'too many operands');

  // Bad first operand.
  test($opcode, r8()  , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , r32() , "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, m16() , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, m32() , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, m64() , r32() , "operand does not match the statement for: '$opcode'");

  // Bad second operand.
  test($opcode, r32() , r8()  , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r64() , "operand does not match the statement for: '$opcode'");

  test($opcode, r32() , m8()  , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , m16() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , m32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , m64() , "operand does not match the statement for: '$opcode'");

  test($opcode, mm()  , mm()  , "operand does not match the statement for: '$opcode'");

  test($opcode, r32() , i8()  , "immediate operand not allowed for: '$opcode'");
  test($opcode, mm()  , i8()  , "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, mm()  , r32() , '');
  test($opcode, mm()  , m32() , '');
  test($opcode, r32() , mm()  , '');
  test($opcode, m32() , mm()  , '');

// ------------------------------------------------------------------------------
// MMX: movq  mm,mm
// MMX: movq  mm,r64
// MMX: movq  mm,m64
// MMX: movq  r64,mm
// MMX: movq  m64,mm
// ------------------------------------------------------------------------------

suite('movq');
  $opcode = 'movq';

  // Check number of operands.
  test($opcode,                   'not enough operands');
  test($opcode, mm(),             'not enough operands');
  test($opcode, mm(), mm(), mm(), 'too many operands');

  // Bad first operand.
  test($opcode, r8()  , r64() , "operand does not match the statement for: '$opcode'");
  test($opcode, r16() , r64() , "operand does not match the statement for: '$opcode'");
  test($opcode, r32() , r64() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , r64() , "operand does not match the statement for: '$opcode'");

  test($opcode, m8()  , r64() , "operand does not match the statement for: '$opcode'");
  test($opcode, m16() , r64() , "operand does not match the statement for: '$opcode'");
  test($opcode, m32() , r64() , "operand does not match the statement for: '$opcode'");
  test($opcode, m64() , r64() , "operand does not match the statement for: '$opcode'");

  // Bad second operand.
  test($opcode, r64() , r8()  , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , r16() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , r32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , r64() , "operand does not match the statement for: '$opcode'");

  test($opcode, r64() , m8()  , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , m16() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , m32() , "operand does not match the statement for: '$opcode'");
  test($opcode, r64() , m64() , "operand does not match the statement for: '$opcode'");

  test($opcode, r64() , i8()  , "immediate operand not allowed for: '$opcode'");
  test($opcode, mm()  , i8()  , "immediate operand not allowed for: '$opcode'");

  // Good examples (should assemble without error).
  test($opcode, mm()  , r64() , '');
  test($opcode, mm()  , m64() , '');
  test($opcode, r64() , mm()  , '');
  test($opcode, m64() , mm()  , '');
  test($opcode, mm()  , mm()  , '');
