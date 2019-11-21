<?php

  $stats = array();

  // ---------------------------------------------------------------------------
  //                             Helper functions
  // ---------------------------------------------------------------------------  
  
  if (file_exists('__fasm.out'))
  {
    unlink('__fasm.out');
  }

  if (file_exists('__fasm.err'))
  {
    unlink('__fasm.err');
  }
  
  function _createOneTest($dstDir, $patternId, $patternSource, $mnemonic)
  {
    global $stats;

    if (!isset($stats[$mnemonic]))
    {
      $stats[$mnemonic] = array();
    }
      
    $newSource  = str_replace('${mnemonic}', $mnemonic, $patternSource);
    $newPath    = $dstDir.'/'.$mnemonic . $patternId;
    $newPathAsm = $newPath.'.asm';
    $newPathBin = $newPath.'.bin';
   
    file_put_contents($newPathAsm, $newSource);
      
    system('fasm ' .$newPathAsm.' >>__fasm.out 2>>__fasm.err');
      
    if (file_exists($newPathBin)) 
    {
      // Test created.
      echo '  ', $mnemonic, $patternId, '... OK', "\n";
      $stats[$mnemonic][] = $mnemonic.$patternId;
    }
    else
    {
      // Fasm failed on this source.
      // Probably operands pattern doesn't match to mnemonic.
      echo '  ', $mnemonic, $patternId, '... SKIPPED', "\n";
      unlink($newPathAsm);
    }
  }

  function createTests($dstDir, $patternId, $poolOfMnemonics)
  {
    if ($patternId !== '')
    {                        
      $patternId = '_' . $patternId;
    }

    $patternSource = file_get_contents('__pattern'.$patternId.'.asm');

    foreach ($poolOfMnemonics as $mnemonic)
    {
      _createOneTest($dstDir, $patternId, $patternSource, $mnemonic);
    }
  }

  function createTestsInline($dstDir, $patternId, $patternSource, $poolOfMnemonics)
  {
    if ($patternId !== '')
    {                        
      $patternId = '_' . $patternId;
    }

    foreach ($poolOfMnemonics as $mnemonic)
    {
      _createOneTest($dstDir, $patternId, $patternSource, $mnemonic);
    }
  }

  // ---------------------------------------------------------------------------
  //                            Core instructions
  // ---------------------------------------------------------------------------  

  $poolOfMnemonics_ALU = array(
    'add',
    'or',
    'adc',
    'sbb',
    'and',
    'sub',
    'xor',
    'cmp',
    'test',
    'mov'
  );

  // alu r/m, r/m/imm
  //createTests('core', 'r_r'  , $poolOfMnemonics_ALU);
  //createTests('core', 'r_m'  , $poolOfMnemonics_ALU);
  //createTests('core', 'm_r'  , $poolOfMnemonics_ALU);
  //createTests('core', 'r_imm', $poolOfMnemonics_ALU);
  //createTests('core', 'm_imm', $poolOfMnemonics_ALU);
  
  // xchg without imm
  //createTests('core', 'r_r', ['xchg']);
  //createTests('core', 'r_m', ['xchg']);
  //createTests('core', 'm_r', ['xchg']);
  
  // lea r, m16/32/64
  // createTests('core', 'r_m', ['lea']);

  // ---------------------------------------------------------------------------
  //                             x87 instructions
  // ---------------------------------------------------------------------------  

  $poolOfMnemonics_x87_twoArgs = array(
    'x87/fadd',
    'x87/fmul',
    'x87/fsub',
    'x87/fsubr',
    'x87/fdiv',
    'x87/fdivr',
  );

  $poolOfMnemonics_x87_all = array(
    'f2xm1',
    'fabs',
    'fadd',
    'faddp',
    'fbld',
    'fbstp',
    'fchs',
    'fclex',
    'fcom',
    'fcomp',
    'fcompp',
    'fdecstp',
    'fdisi',
    'fdiv',
    'fdivp',
    'fdivr',
    'fdivrp',
    'feni',
    'ffree',
    'fiadd',
    'ficom',
    'ficomp',
    'fidiv',
    'fidivr',
    'fild',
    'fimul',
    'fincstp',
    'finit',
    'fist',
    'fistp',
    'fisub',
    'fisubr',
    'fld',
    'fld1',
    'fldcw',
    'fldenv',
    'fldenvw',
    'fldl2e',
    'fldl2t',
    'fldlg2',
    'fldln2',
    'fldpi',
    'fldz',
    'fmul',
    'fmulp',
    'fnclex',
    'fndisi',
    'fneni',
    'fninit',
    'fnop',
    'fnsave',
    'fnsavew',
    'fnstcw',
    'fnstenv',
    'fnstenvw',
    'fnstsw',
    'fpatan',
    'fprem',
    'fptan',
    'frndint',
    'frstor',
    'frstorw',
    'fsave',
    'fsavew',
    'fscale',
    'fsqrt',
    'fst',
    'fstcw',
    'fstenv',
    'fstenvw',
    'fstp',
    'fstsw',
    'fsub',
    'fsubp',
    'fsubr',
    'fsubrp',
    'ftst',
    'fwait',
    'fxam',
    'fxch',
    'fxtract',
    'fyl2x',
    'fyl2xp1',
    'fsetpm',
    'fcos',
    'fldenvd',
    'fsaved',
    'fstenvd',
    'fprem1',
    'frstord',
    'fsin',
    'fsincos',
    'fstenvd',
    'fucom',
    'fucomp',
    'fucompp',
    'fcmovbe',
    'fcmove',
    'fcmovnb',
    'fcmovnbe',
    'fcmovne',
    'fcmovnu',
    'fcmovu',
    'fcomi',
    'fcomip',
    'fucomi',
    'fucomip',
    'fxrstor',
    'fxsave',
    'fisttp',
  );       

  createTests('x87', 'st',    $poolOfMnemonics_x87_all);
  createTests('x87', 'st_st', $poolOfMnemonics_x87_all);
  createTests('x87', 'm16',   $poolOfMnemonics_x87_all);
  createTests('x87', 'm32',   $poolOfMnemonics_x87_all);
  createTests('x87', 'm64',   $poolOfMnemonics_x87_all);
  createTests('x87', 'm80',   $poolOfMnemonics_x87_all);

  createTestsInline('x87', ''   , "use64\n".'${mnemonic}'       , $poolOfMnemonics_x87_all);
  createTestsInline('x87', 'ax' , "use64\n".'${mnemonic} ax'    , $poolOfMnemonics_x87_all);
  createTestsInline('x87', 'm'  , "use64\n".'${mnemonic} [rcx]' , $poolOfMnemonics_x87_all);

  //
  // Show statistics.
  //
  
  echo "\n";
  echo "-----------------------------------------------------------------------\n";
  echo "                          Generated tests\n";
  echo "-----------------------------------------------------------------------\n";
  echo "\n";
  
  foreach ($stats as $mnemonic => $arrayOfPatterns)
  {
    if (!empty($arrayOfPatterns))
    {
      echo $mnemonic, ":\n";

      foreach ($arrayOfPatterns as $item)
      {
        echo '  ', $item, "\n";
      }
      echo "\n";
    }
  }

  echo "-----------------------------------------------------------------------\n";
  echo "                          Unhandled opcodes\n";
  echo "-----------------------------------------------------------------------\n";
  echo "\n";

  foreach ($stats as $mnemonic => $arrayOfPatterns)
  {
    if (empty($arrayOfPatterns))
    {
      echo '  ', $mnemonic, "\n";
    }
  }
  