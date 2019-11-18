<?php

 define('PREFIX16', '66 ');
 define('PREFIX64', '48 ');

 $data = array();

 function emit($primaryOpcode, $mnemonic, $op1, $op2)
 {
     global $data;

     if ($mnemonic !== 'invalid')
     {
       $key = $mnemonic;

       if (!empty($op1))
       {
         $key .= ' ' . $op1;

         if (!empty($op2))
         {
           $key .= ',' . $op2;
/*
           if (!empty($op3))
           {
             $key .= ',' . $op3;

             if (!empty($op3))
             {
               $key .= ',' . $op3;
             }
           }
*/
         }
       }

       $key = trim($key);

       if (empty($data[$key]))
       {
         $data[$key] = true;

         //echo '  ', str_pad("'" . $key . "'", 22), ": '", $primaryOpcode, "',\n";
/*
         if (strpos($key, 'imm8') !== false)
         {
           $primaryOpcode .= ' ii';
         }
         else if (strpos($key, 'imm16') !== false)
         {
           $primaryOpcode .= ' ii ii';
         }
         else if (strpos($key, 'imm32') !== false)
         {
           $primaryOpcode .= ' ii ii ii ii';
         }

         if (strpos($key, 'rel8') !== false)
         {
           $primaryOpcode .= ' pp';
         }
         else if (strpos($key, 'rel16') !== false)
         {
           $primaryOpcode .= ' pp pp';
         }
         else if (strpos($key, 'rel32') !== false)
         {
           $primaryOpcode .= ' pp pp pp pp';
         }
*/

         $key = str_replace('imm8'  , '0x12'       , $key);
         $key = str_replace('imm16' , '0x1234'     , $key);
         $key = str_replace('imm32' , '0x12345678' , $key);

         $key = str_replace('r8' , 'bl' , $key);
         $key = str_replace('r16', 'bx' , $key);
         $key = str_replace('r32', 'ebx', $key);
         $key = str_replace('r64', 'rbx', $key);

         $key = str_replace('m8' , 'byte [rsi]', $key);
         $key = str_replace('m16', 'word [rsi]', $key);
         $key = str_replace('m32', 'dword [rsi]', $key);
         $key = str_replace('m64', 'qword [rsi]', $key);

         $key = str_replace('sreg', 'ds', $key);

         echo $key, "\n";

         #echo str_pad($key, 24), $primaryOpcode, "\n";
       }
     }
 }

 function emitq($primaryOpcode, $mnemonic, $op1, $op2)
 {
   emit('48 '.$primaryOpcode, $mnemonic, $op1, $op2);
 }

 function emitd($primaryOpcode, $mnemonic, $op1, $op2)
 {
   emit($primaryOpcode, $mnemonic, $op1, $op2);
 }

 function emitw($primaryOpcode, $mnemonic, $op1, $op2)
 {
   emit('66 '.$primaryOpcode, $mnemonic, $op1, $op2);
 }

 foreach (file('3.txt') as $line)
 {
   $line = strtolower($line);
//   $line = str_replace('r/m16/32/64', 'rm' , $line);
//   $line = str_replace('r16/32/64'  , 'r'  , $line);
//   $line = str_replace('r/m8'       , 'rm8', $line);
//   $line = str_replace('r8'         , 'r8' , $line);
//   $line = str_replace('imm8'       , 'i8', $line);
//   $line = str_replace('imm16/32'   , 'i32', $line);

   $tokens = explode('	', $line);

   if (!empty($tokens[2]) && !empty($tokens[10]))
   {
     $prefix              = trim($tokens[0]);
     $prefix0f            = trim($tokens[1]);
     $primaryOpcode       = trim($tokens[2]);
     $secondaryOpcode     = trim($tokens[3]);
     $registerOpcodeField = trim($tokens[4]);
     $mnemonic            = trim($tokens[10]);
     $op1                 = trim($tokens[11]);
     $op2                 = trim($tokens[12]);
     $op3                 = trim($tokens[13]);
     $op4                 = trim($tokens[14]);

     if ($prefix0f !== '')
     {
       $primaryOpcode = '0f ' . $primaryOpcode;
     }

     if ($registerOpcodeField === '')
     {
     }
     else if ($registerOpcodeField === 'r')
     {
       $primaryOpcode .= ' mm';
     }
     else
     {
       $primaryOpcode .= ' ' . dechex(0xc0 + intval($registerOpcodeField) * 8);
     }

     $op1 = str_replace('m32real', 'm32', $op1);
     $op1 = str_replace('m64real', 'm64', $op1);
     $op1 = str_replace('m16int' , 'm16', $op1);
     $op1 = str_replace('m32int' , 'm32', $op1);
     $op1 = str_replace('eflags' , ''   , $op1);
     $op1 = str_replace('flags'  , ''   , $op1);

     $op2 = str_replace('m32real', 'm32', $op2);
     $op2 = str_replace('m64real', 'm64', $op2);
     $op2 = str_replace('m16int' , 'm16', $op2);
     $op2 = str_replace('m32int' , 'm32', $op2);
     $op2 = str_replace('eflags' , ''   , $op2);
     $op2 = str_replace('flags'  , ''   , $op2);

     if (($op1 === 'r16/32/64') && ($op2 === 'r/m16/32/64'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'r16');
       emitd($primaryOpcode, $mnemonic, 'r32', 'r32');
       emitq($primaryOpcode, $mnemonic, 'r64', 'r64');
       emitw($primaryOpcode, $mnemonic, 'r16', 'm16');
       emitd($primaryOpcode, $mnemonic, 'r32', 'm32');
       emitq($primaryOpcode, $mnemonic, 'r64', 'm64');
     }
     else if (($op1 === 'r/m16/32/64') && ($op2 === 'r16/32/64'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'r16');
       emitd($primaryOpcode, $mnemonic, 'r32', 'r32');
       emitq($primaryOpcode, $mnemonic, 'r64', 'r64');
       emitw($primaryOpcode, $mnemonic, 'm16', 'r16');
       emitd($primaryOpcode, $mnemonic, 'm32', 'r32');
       emitq($primaryOpcode, $mnemonic, 'm64', 'r64');
     }
     else if (($op1 === 'r/m8') && ($op2 === 'r8'))
     {
       emit($primaryOpcode, $mnemonic, 'r8', 'r8');
       emit($primaryOpcode, $mnemonic, 'm8', 'r8');
     }
     else if (($op1 === 'r8') && ($op2 === 'r/m8'))
     {
       emit($primaryOpcode, $mnemonic, 'r8', 'r8');
       emit($primaryOpcode, $mnemonic, 'r8', 'm8');
     }
     else if (($op1 === 'rax') && ($op2 === 'imm16/32'))
     {
       emitw($primaryOpcode, $mnemonic, 'ax', 'imm16');
       emitd($primaryOpcode, $mnemonic, 'eax', 'imm32');
       emitq($primaryOpcode, $mnemonic, 'rax', 'imm32');
     }
     else if (($op1 === 'r64/16') && empty($op2))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', '');
       emitd($primaryOpcode, $mnemonic, 'r64', '');
     }
     else if ($mnemonic === 'movsxd')
     {
       emitq($primaryOpcode, 'movsxd', 'r64', 'r32');
       emitq($primaryOpcode, 'movsxd', 'r64', 'm32');
     }
     else if (($mnemonic === 'push') && ($op1 === 'imm16/32'))
     {
       emit($primaryOpcode, 'push', 'imm32', '');
     }
     else if ($mnemonic === 'ins' && ($op1 === 'm16'))
     {
       emitw($primaryOpcode, $mnemonic, 'm16', $op2);
     }
     else if ($mnemonic === 'outs' && ($op2 === 'm16'))
     {
       emitw($primaryOpcode, $mnemonic, $op1, 'm16');
     }
     else if (($op1 === 'm16/32') && ($op2 === 'dx'))
     {
       emitw($primaryOpcode, $mnemonic, 'm16', 'dx');
       emitd($primaryOpcode, $mnemonic, 'm32', 'dx');
     }
     else if (($op1 === 'dx') && ($op2 === 'm16/32'))
     {
       emitw($primaryOpcode, $mnemonic, 'dx', 'm16');
       emitd($primaryOpcode, $mnemonic, 'dx', 'm32');
     }
     else if (($op1 === 'r/m8') && ($op2 === 'imm8'))
     {
       emit($primaryOpcode, $mnemonic, 'r8', 'imm8');
       emit($primaryOpcode, $mnemonic, 'm8', 'imm8');
     }
     else if (($op1 === 'r/m16/32/64') && ($op2 === 'imm16/32'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'imm16');
       emitd($primaryOpcode, $mnemonic, 'r32', 'imm32');
       emitq($primaryOpcode, $mnemonic, 'r64', 'imm32');
       emitw($primaryOpcode, $mnemonic, 'm16', 'imm16');
       emitd($primaryOpcode, $mnemonic, 'm32', 'imm32');
       emitq($primaryOpcode, $mnemonic, 'm64', 'imm32');
     }
     else if (($op1 === 'r/m16/32/64') && ($op2 === 'imm8'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'imm8');
       emitd($primaryOpcode, $mnemonic, 'r32', 'imm8');
       emitq($primaryOpcode, $mnemonic, 'r64', 'imm8');
       emitw($primaryOpcode, $mnemonic, 'm16', 'imm8');
       emitd($primaryOpcode, $mnemonic, 'm32', 'imm8');
       emitq($primaryOpcode, $mnemonic, 'm64', 'imm8');
     }
     else if (($mnemonic === 'lea') && ($op1 === 'r16/32/64') && ($op2 === 'm'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'm8');
       emitw($primaryOpcode, $mnemonic, 'r16', 'm16');
       emitw($primaryOpcode, $mnemonic, 'r16', 'm32');
       emitw($primaryOpcode, $mnemonic, 'r16', 'm64');
       emitd($primaryOpcode, $mnemonic, 'r32', 'm8');
       emitd($primaryOpcode, $mnemonic, 'r32', 'm16');
       emitd($primaryOpcode, $mnemonic, 'r32', 'm32');
       emitd($primaryOpcode, $mnemonic, 'r32', 'm64');
       emitq($primaryOpcode, $mnemonic, 'r64', 'm8');
       emitq($primaryOpcode, $mnemonic, 'r64', 'm16');
       emitq($primaryOpcode, $mnemonic, 'r64', 'm32');
       emitq($primaryOpcode, $mnemonic, 'r64', 'm64');
     }
     else if (($op1 === 'sreg') && ($op2 === 'r/m16'))
     {
       emit($primaryOpcode, $mnemonic, 'sreg', 'r16');
       emit($primaryOpcode, $mnemonic, 'sreg', 'm16');
     }
     else if (($primaryOpcode === '8f') && ($op1 === 'r/m16/32') && empty($op2))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', '');
       emitw($primaryOpcode, $mnemonic, 'm16', '');
     }
     else if (($primaryOpcode === '8f') && ($op1 === 'r/m64/16') && empty($op2))
     {
       emit($primaryOpcode, $mnemonic, 'r64', '');
       emit($primaryOpcode, $mnemonic, 'm64', '');
     }
     else if (($mnemonic === 'push') && ($op1 === 'r/m16/32') && empty($op2))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', '');
       emitw($primaryOpcode, $mnemonic, 'm16', '');
     }
     else if (($mnemonic === 'push') && ($op1 === 'r/m64/16') && empty($op2))
     {
       emit($primaryOpcode, $mnemonic, 'r64', '');
       emit($primaryOpcode, $mnemonic, 'm64', '');
     }
     else if (($op1 === 'r16/32/64') && ($op2 === 'rax'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'ax');
       emitd($primaryOpcode, $mnemonic, 'r32', 'eax');
       emitq($primaryOpcode, $mnemonic, 'r64', 'rax');
     }
     else if (($op1 === 'rax') && ($op2 === 'moffs16/32/64'))
     {
       emitw($primaryOpcode, $mnemonic, 'ax', 'moffs16');
       emitd($primaryOpcode, $mnemonic, 'eax', 'moffs32');
       emitq($primaryOpcode, $mnemonic, 'rax', 'moffs64');
     }
     else if (($op1 === 'moffs16/32/64') && ($op2 === 'rax'))
     {
       emitw($primaryOpcode, $mnemonic, 'moffs16', 'ax');
       emitd($primaryOpcode, $mnemonic, 'moffs32', 'eax');
       emitq($primaryOpcode, $mnemonic, 'moffs64', 'rax');
     }
     else if (($mnemonic === 'movs') ||
              ($mnemonic === 'cmps') ||
              ($mnemonic === 'scas') ||
              ($mnemonic === 'stos') ||
              ($mnemonic === 'lods'))
     {
       emit($primaryOpcode, $mnemonic, '', '');
     }
     else if (($op1 === 'r/m8') && empty($op2))
     {
       emit($primaryOpcode, $mnemonic, 'r8', '');
       emit($primaryOpcode, $mnemonic, 'm8', '');
     }
     else if (($op1 === 'r/m16/32/64') && empty($op2))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', '');
       emitd($primaryOpcode, $mnemonic, 'r32', '');
       emitq($primaryOpcode, $mnemonic, 'r64', '');
       emitw($primaryOpcode, $mnemonic, 'm16', '');
       emitd($primaryOpcode, $mnemonic, 'm32', '');
       emitq($primaryOpcode, $mnemonic, 'm64', '');
     }
     else if (($op1 === 'r16/32/64') && ($op2 === 'imm16/32/64'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'imm16');
       emitd($primaryOpcode, $mnemonic, 'r32', 'imm32');
       emitq($primaryOpcode, $mnemonic, 'r64', 'imm64');
     }
     else if (($op1 === 'r/m8') && ($op2 === '1'))
     {
       emit($primaryOpcode, $mnemonic, 'r8', '1');
       emit($primaryOpcode, $mnemonic, 'm8', '1');
     }
     else if (($op1 === 'r/m16/32/64') && ($op2 === '1'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', '1');
       emitd($primaryOpcode, $mnemonic, 'r32', '1');
       emitq($primaryOpcode, $mnemonic, 'r64', '1');
       emitw($primaryOpcode, $mnemonic, 'm16', '1');
       emitd($primaryOpcode, $mnemonic, 'm32', '1');
       emitq($primaryOpcode, $mnemonic, 'm64', '1');
     }
     else if (($op1 === 'r/m8') && ($op2 === 'cl'))
     {
       emit($primaryOpcode, $mnemonic, 'r8', 'cl');
       emit($primaryOpcode, $mnemonic, 'm8', 'cl');
     }
     else if (($op1 === 'r/m16/32/64') && ($op2 === 'cl'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', 'cl');
       emitd($primaryOpcode, $mnemonic, 'r32', 'cl');
       emitq($primaryOpcode, $mnemonic, 'r64', 'cl');
       emitw($primaryOpcode, $mnemonic, 'm16', 'cl');
       emitd($primaryOpcode, $mnemonic, 'm32', 'cl');
       emitq($primaryOpcode, $mnemonic, 'm64', 'cl');
     }
     else if (($mnemonic === 'call') && ($op1 === 'r/m16/32') && empty($op2))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', '');
       emitw($primaryOpcode, $mnemonic, 'm16', '');
     }
     else if (($mnemonic === 'jmp') && ($op1 === 'r/m16/32') && empty($op2))
     {
       emitw($primaryOpcode, $mnemonic, 'r16', '');
       emitw($primaryOpcode, $mnemonic, 'm16', '');
     }
     else if (($op1 === 'r/m64') && empty($op2))
     {
       emit($primaryOpcode, $mnemonic, 'r64', '');
       emit($primaryOpcode, $mnemonic, 'm64', '');
     }
     else if (($op1 === 'm16:16/32/64') && empty($op2))
     {
       emitw($primaryOpcode, $mnemonic, 'm16:16', '');
       emitq($primaryOpcode, $mnemonic, 'm16:64', '');
     }
     else if (($op1 === 'rel16/32'))
     {
       emitw($primaryOpcode, $mnemonic, 'rel16', $op2);
       emitd($primaryOpcode, $mnemonic, 'rel32', $op2);
     }
     else if (($op1 === 'st') && ($op2 === 'sti/m32real'))
     {
       emit($primaryOpcode, $mnemonic, 'st', 'sti');
       emit($primaryOpcode, $mnemonic, 'st', 'm32real');
     }
     else if (($op1 === 'm14/28') && empty($op2))
     {
       emit($primaryOpcode, $mnemonic, 'm14', $op2);
       emit($primaryOpcode, $mnemonic, 'm28', $op2);
     }
     else if (($op1 === 'm94/108') && ($op2 === 'st'))
     {
       emit($primaryOpcode, $mnemonic, 'm94', $op2);
       emit($primaryOpcode, $mnemonic, 'm108', $op2);
     }
     else if (($op1 === 'xmm') && ($op2 === 'xmm/m128'))
     {
       emit($primaryOpcode, $mnemonic, 'xmm', 'xmm');
       emit($primaryOpcode, $mnemonic, 'xmm', 'm128');
     }
     else if (($op1 === 'xmm') && ($op2 === 'xmm/m64'))
     {
       emit($primaryOpcode, $mnemonic, 'xmm', 'xmm');
       emit($primaryOpcode, $mnemonic, 'xmm', 'm64');
     }
     else if (($op1 === 'xmm') && ($op2 === 'xmm/m32'))
     {
       emit($primaryOpcode, $mnemonic, 'xmm', 'xmm');
       emit($primaryOpcode, $mnemonic, 'xmm', 'm32');
     }
     else if (($op1 === 'xmm/m128') && ($op2 === 'xmm'))
     {
       emit($primaryOpcode, $mnemonic, 'xmm', 'xmm');
       emit($primaryOpcode, $mnemonic, 'm128','xmm');
     }
     else if (($op1 === 'xmm/m64') && ($op2 === 'xmm'))
     {
       emit($primaryOpcode, $mnemonic, 'xmm', 'xmm');
       emit($primaryOpcode, $mnemonic, 'm64','xmm');
     }
     else if (($op1 === 'xmm/m32') && ($op2 === 'xmm'))
     {
       emit($primaryOpcode, $mnemonic, 'xmm', 'xmm');
       emit($primaryOpcode, $mnemonic, 'm32','xmm');
     }
     else if (($op1 === 'mm') && ($op2 === 'mm/m64'))
     {
       emit($primaryOpcode, $mnemonic, 'mm','mm');
       emit($primaryOpcode, $mnemonic, 'mm','m64');
     }
     else if (($op1 === 'mm/m64') && ($op2 === 'mm'))
     {
       emit($primaryOpcode, $mnemonic, 'mm','mm');
       emit($primaryOpcode, $mnemonic, 'm64','mm');
     }
     else if (($op1 === 'r32/64') && ($op2 === 'mm'))
     {
       emit($primaryOpcode, $mnemonic, 'm32','mm');
       emit($primaryOpcode, $mnemonic, 'r64','mm');
     }
     else if (($op1 === 'r32/64') && ($op2 === 'xmm'))
     {
       emit($primaryOpcode, $mnemonic, 'm32','xmm');
       emit($primaryOpcode, $mnemonic, 'r64','xmm');
     }
     else if (($op1 === 'r16/32/64') && ($op2 === 'm16/32/64'))
     {
       emitw($primaryOpcode, $mnemonic, 'r16','m16');
       emitd($primaryOpcode, $mnemonic, 'r32','m32');
       emitq($primaryOpcode, $mnemonic, 'r64','m64');
     }
     else if (($op1 === 'm16/32/64') && ($op2 === 'r16/32/64'))
     {
       emitw($primaryOpcode, $mnemonic, 'm16','r16');
       emitd($primaryOpcode, $mnemonic, 'm32','r32');
       emitq($primaryOpcode, $mnemonic, 'm64','r64');
     }
     else if (($op1 === 'r32/64') && ($op2 === 'r/m8'))
     {
       emitd($primaryOpcode, $mnemonic, 'r32','r8');
       emitd($primaryOpcode, $mnemonic, 'r32','m8');
       emitq($primaryOpcode, $mnemonic, 'r64','r8');
       emitq($primaryOpcode, $mnemonic, 'r64','m8');
     }
     else if (($op1 === 'r32/64') && ($op2 === 'xmm/m32'))
     {
       emit($primaryOpcode, $mnemonic, 'r32','xmm');
       emit($primaryOpcode, $mnemonic, 'r32','m32');
       emit($primaryOpcode, $mnemonic, 'r64','xmm');
       emit($primaryOpcode, $mnemonic, 'r64','m32');
     }
     else
     {
       emit($primaryOpcode, $mnemonic, $op1, $op2);
     }
   }
 }
