<?php

  $stats = array();

  // ---------------------------------------------------------------------------
  //                  Helper functions: create patterns
  // ---------------------------------------------------------------------------

  $POOL_OF_OPERANDS = array();

  function loadPoolOfOperands($operandType)
  {
    global $POOL_OF_OPERANDS;

    $rv = null;

    if (isset($operandType))
    {
      if (isset($POOL_OF_OPERANDS[$operandType]))
      {
        $rv = $POOL_OF_OPERANDS[$operandType];
      }
      else
      {
        $path = '_operands/' . $operandType . '.asm';

        if (!file_exists($path))
        {
          die("error: could not load operand pool: '" . $path . "'");
        }

        foreach (file($path) as $line)
        {
          // Skip empty lines and ; comments.
          $line = trim(preg_replace('/\s\s+/', '', $line));

          if (($line !== '') && ($line[0] !== ';'))
          {
            $rv[] = $line;
          }
        }

        $POOL_OF_OPERANDS[$operandType] = $rv;
      }
    }

    return $rv;
  }

  function getPattern($typeX = null, $typeY = null, $typeZ = null)
  {
    $patternId = $typeX;
    $src       = '';

    if ($typeY)
    {
      $patternId .= '_'.$typeY;
    
      if ($typeZ)
      {
        $patternId .= '_'.$typeZ;
      }
    }

    $patternFile = '_patterns/opcode_'.$patternId.'.asm';

    if (file_exists($patternFile))
    {
      $src = file_get_contents($patternFile);
    }
    else
    {
      $src   = "use64\n";
      $poolX = loadPoolOfOperands($typeX);
      $poolY = loadPoolOfOperands($typeY);
      $poolZ = loadPoolOfOperands($typeZ);

      if (isset($typeX) && isset($typeY) && isset($typeZ))
      {
        // opcode x, y, z
        foreach ($poolX as $x)
        {
          foreach ($poolY as $y)
          {
            foreach ($poolZ as $z)
            {
              $src .= '${mnemonic} ' . $x . ', ' . $y . ',' . $z . "\n";
            }
          }
        }
      }
      else if (isset($typeX) && isset($typeY))
      {
        // opcode x, y
        foreach ($poolX as $x)
        {
          foreach ($poolY as $y)
          {
            $src .= '${mnemonic} ' . $x . ', ' . $y . "\n";
          }
        }
      }
      else if (isset($typeX))
      {
        // opcode x
        foreach ($poolX as $x)
        {
          $src .= '${mnemonic} ' . $x . "\n";
        }
      }
      else
      {
        $src .= '${mnemonic}';
      }
    }
    
    return array(
      'id'  => $patternId,
      'src' => $src
    );
  }

  // ---------------------------------------------------------------------------
  //             Helper functions: create tests from patterns
  // ---------------------------------------------------------------------------

  function _createOneTest($dstDir, $pattern, $mnemonic)
  {
    global $stats;

    $rv            = 0;
    $patternId     = $pattern['id'];
    $patternSource = $pattern['src'];

    if (!isset($stats[$mnemonic]))
    {
      $stats[$mnemonic] = array();
    }

    if (empty($patternId))
    {
      $mnemonicWithPattern = $mnemonic;
    }
    else
    {
      $mnemonicWithPattern = $mnemonic.'_'.$patternId;
    }

    $newSource  = str_replace('${mnemonic}', $mnemonic, $patternSource);
    $newPath    = $dstDir.'/'.$mnemonicWithPattern;
    $newPathAsm = $newPath.'.asm';
    $newPathBin = $newPath.'.bin';

    file_put_contents($newPathAsm, $newSource);

    system('fasm '.$newPathAsm.' >>__fasm.out 2>>__fasm.err');

    if (file_exists($newPathBin))
    {
      // Test created.
      echo '  ', $mnemonicWithPattern, '... OK', "\n";
      $stats[$mnemonic][] = $mnemonicWithPattern;
      $rv = 1;
    }
    else
    {
      // Fasm failed on this source.
      // Probably operands pattern doesn't match to mnemonic.
      echo '  ', $mnemonicWithPattern, '... SKIPPED', "\n";
      unlink($newPathAsm);
    }

    return $rv;
  }

  function createTests($dstDir, $poolOfPatterns, $poolOfMnemonics)
  {
    if (isset($poolOfPatterns['id']))
    {
      // One pattern only.
      // Wrap into array.
      $poolOfPatterns = [$poolOfPatterns];
    }

    $rv = 0;

    foreach ($poolOfPatterns as $onePattern)
    {
      foreach ($poolOfMnemonics as $mnemonic)
      {
        $rv += _createOneTest($dstDir, $onePattern, $mnemonic);
      }
    }

    return $rv;
  }

  function loadIndex($dir)
  {
    $poolOfMnemonics = array();

    foreach (file($dir.'/__index.txt') as $line)
    {
      // Skip empty lines end ; comments.
      $line = trim(preg_replace('/\s\s+/', '', $line));

      if (($line !== '') && ($line[0] !== ';'))
      {
        $poolOfMnemonics[] = $line;
      }
    }

    return $poolOfMnemonics;
  }

  function groupOpcodeOnlyTests($dir, $poolOfMnemonics)
  {
    $cnt       = 0;
    $asmSource = "use64\n\n;Opcode only instructions (no operands)\n";

    foreach ($poolOfMnemonics as $m)
    {
      $asmPath = $dir.'/'.$m.'.asm';
      $binPath = $dir.'/'.$m.'.bin';

      if (file_exists($binPath))
      {
        unlink($asmPath);
        unlink($binPath);

        $cnt++;

        $asmSource .= $m."\n";
      }
    }

    if ($cnt > 0)
    {
      echo 'Grouped ', $cnt, ' opcodes without operands', "\n";

      _createOneTest(
        $dir, 
        array('id' => 'no_operands', 'src' => $asmSource), 
        'common'
      );
    }
  }

  function groupTests($dir, $poolOfMnemonics)
  {
    groupOpcodeOnlyTests($dir, $poolOfMnemonics);
    
    $groups = array(
      'r' => ['r8', 'r16', 'r32', 'r64'],
      'm' => ['m8', 'm16', 'm32', 'm64'],

      'rd' => ['r16', 'r32', 'r64'],
      'md' => ['m16', 'm32', 'm64'],
      
      'r_r'    => ['r8_r8'  , 'r16_r16' , 'r32_r32' , 'r64_r64'],
      'r_m'    => ['r8_m8'  , 'r16_m16' , 'r32_m32' , 'r64_m64'],
      'm_r'    => ['m8_r8'  , 'm16_r16' , 'm32_r32' , 'm64_r64'],
      'm_imm8' => ['m8_imm8', 'm16_imm8', 'm32_imm8', 'm64_imm8'],
      'r_imm8' => ['r8_imm8', 'r16_imm8', 'r32_imm8', 'r64_imm8'],      
      
      'rd_rd'   => ['r16_r16'  , 'r32_r32'  , 'r64_r64'],
      'rd_md'   => ['r16_m16'  , 'r32_m32'  , 'r64_m64'],
      'md_rd'   => ['m16_r16'  , 'm32_r32'  , 'm64_r64'],      
      'rd_imm8' => ['r16_imm8' , 'r32_imm8' , 'r64_imm8'],
      'md_imm8' => ['m16_imm8' , 'm32_imm8' , 'm64_imm8'],
    );
    
    foreach ($poolOfMnemonics as $mnemonic)
    {
      foreach ($groups as $groupId => $arrayOfItems)
      {
        $areAllItemsExist = true;
        
        foreach ($arrayOfItems as $item)
        {
          if (!file_exists($dir.'/'.$mnemonic.'_'.$item.'.bin'))
          {
            // At least one pattern does not exist.
            // Give up and don't go on anymore.
            $areAllItemsExist = false;
          
            break;
          }
        }

        if ($areAllItemsExist)
        {
          // All group items exist.
          // Remove single items and create grouped one.
          foreach ($arrayOfItems as $item)
          {
            if (_createOneTest($dir, getPattern($groupId), $mnemonic))
            {
              unlink($dir.'/'.$mnemonic.'_'.$item.'.asm');
              unlink($dir.'/'.$mnemonic.'_'.$item.'.bin');            
            }
          }
        }        
      }    
    }
  }
  
  // ---------------------------------------------------------------------------
  //                              Entry point
  // ---------------------------------------------------------------------------

  if (file_exists('__fasm.out'))
  {
    unlink('__fasm.out');
  }

  if (file_exists('__fasm.err'))
  {
    unlink('__fasm.err');
  }

  // ---------------------------------------------------------------------------
  //                        Common operands patterns
  // ---------------------------------------------------------------------------
  
  $opcodeOnlyPattern = array(
    'id'  => '',
    'src' => "use64\n"
           . "; Opcode only (no operands)\n"
           . '${mnemonic}',
  );

  // The most general operands.
  $poolOfPatterns_core = array(
    // No operands (opcode only)
    $opcodeOnlyPattern,
    
    // One operand.
    getPattern('r'),
    getPattern('m'),
    getPattern('imm'),
    
    // Two operands.
    getPattern('r', 'r'),
    getPattern('r', 'm'),
    getPattern('r', 'imm'),
    getPattern('m', 'r'),
    getPattern('m', 'imm'),
  );

  // Operands with specified size of not all sizes are allowed.
  $poolOfPatterns_core_r = array(
    getPattern('r8'),
    getPattern('r16'),
    getPattern('r32'),
    getPattern('r64'),
  );

  $poolOfPatterns_core_m = array(
    getPattern('m8'),
    getPattern('m16'),
    getPattern('m32'),
    getPattern('m64'),
  );

  $poolOfPatterns_core_imm = array(
    getPattern('imm8'),
    getPattern('imm16'),
    getPattern('imm32'),
    getPattern('imm64'),
  );

  $poolOfPatterns_core_x_imm64 = array(
    getPattern('imm64'),
    getPattern('r64', 'imm64'),
    getPattern('m64', 'imm64'),
  );

  $poolOfPatterns_core_r_r = array(
    getPattern('r8' , 'r8'),
    getPattern('r16', 'r8'),
    getPattern('r16', 'r16'),
    getPattern('r32', 'r8'),
    getPattern('r32', 'r16'),
    getPattern('r32', 'r32'),
    getPattern('r64', 'r8'),
    getPattern('r64', 'r16'),
    getPattern('r64', 'r32'),
    getPattern('r64', 'r64'),
  );

  $poolOfPatterns_core_r_imm = array(
    getPattern('r8' , 'imm8'),
    getPattern('r16', 'imm8'),
    getPattern('r16', 'imm16'),
    getPattern('r32', 'imm8'),
    getPattern('r32', 'imm16'),
    getPattern('r32', 'imm32'),
    getPattern('r64', 'imm8'),
    getPattern('r64', 'imm16'),
    getPattern('r64', 'imm32'),
    getPattern('r64', 'imm64'),
  );

  $poolOfPatterns_core_r_m = array(
    getPattern('r8' , 'm8'),
    getPattern('r16', 'm8'),
    getPattern('r16', 'm16'),
    getPattern('r32', 'm8'),
    getPattern('r32', 'm16'),
    getPattern('r32', 'm32'),
    getPattern('r64', 'm8'),
    getPattern('r64', 'm16'),
    getPattern('r64', 'm32'),
    getPattern('r64', 'm64'),
  );

  $poolOfPatterns_core_m_r = array(
    getPattern('m8' , 'r8'),
    getPattern('m16', 'r8'),
    getPattern('m16', 'r16'),
    getPattern('m32', 'r8'),
    getPattern('m32', 'r16'),
    getPattern('m32', 'r32'),
    getPattern('m64', 'r8'),
    getPattern('m64', 'r16'),
    getPattern('m64', 'r32'),
    getPattern('m64', 'r64'),
  );

  $poolOfPatterns_core_m_imm = array(
    getPattern('m8' , 'imm8'),
    getPattern('m16', 'imm8'),
    getPattern('m16', 'imm16'),
    getPattern('m32', 'imm8'),
    getPattern('m32', 'imm16'),
    getPattern('m32', 'imm32'),
    getPattern('m64', 'imm8'),
    getPattern('m64', 'imm16'),
    getPattern('m64', 'imm32'),
    getPattern('m64', 'imm64'),
  );

  $poolOfPatterns_core_r_imm8 = array(
    getPattern('r' , 'imm8'),
  );

  $poolOfPatterns_core_m_imm8 = array(
    getPattern('m' , 'imm8'),
  );

  $poolOfPatterns_core_r_cl = array(
    getPattern('r' , 'cl'),
  );

  $poolOfPatterns_core_m_cl = array(
    getPattern('m' , 'cl'),
  );

  // ---------------------------------------------------------------------------
  //                       Core opcodes: jumps and calls
  // ---------------------------------------------------------------------------
/*
  $poolOfMnemonics_coreJumps = loadIndex('core-jumps');

  $poolOfPatterns_coreJumps = [
    getPattern('rel8'),
    getPattern('rel32'),
  ];

  createTests('core-jumps', $poolOfPatterns_coreJumps, $poolOfMnemonics_coreJumps);
  createTests('core-jumps', $poolOfPatterns_core_r, $poolOfMnemonics_coreJumps);
  createTests('core-jumps', $poolOfPatterns_core_m, $poolOfMnemonics_coreJumps);
*/
  // ---------------------------------------------------------------------------
  //                         Core opcodes: other
  // ---------------------------------------------------------------------------

  $poolOfMnemonics_core = loadIndex('core');

  $patternsDecisionTree_core = [    
    // No operands (opcode only).
    [$opcodeOnlyPattern],
    
    // One operand.
//    [getPattern('r')   , $poolOfPatterns_core_r  ],
//    [getPattern('m')   , $poolOfPatterns_core_m  ],
//    [getPattern('imm') , $poolOfPatterns_core_imm],
    
    // Two operands.
//    [getPattern('r', 'r'),   $poolOfPatterns_core_r_r,   $poolOfPatterns_core_r_cl  ],
//    [getPattern('r', 'm'),   $poolOfPatterns_core_r_m                               ],
//    [getPattern('m', 'r'),   $poolOfPatterns_core_m_r,   $poolOfPatterns_core_m_cl  ],
//    [getPattern('r', 'imm'), $poolOfPatterns_core_r_imm, $poolOfPatterns_core_r_imm8],
//    [getPattern('m', 'imm'), $poolOfPatterns_core_m_imm, $poolOfPatterns_core_m_imm8],
//    [                        $poolOfPatterns_core_x_imm64                           ]
  ];

  foreach ($poolOfMnemonics_core as $mnemonic)
  {
    foreach ($patternsDecisionTree_core as $onePath)
    {
      foreach ($onePath as $poolOfPatterns)
      {
        if (createTests('core', $poolOfPatterns, array($mnemonic)) > 0)
        {
          // First working pattern found.
          // Don't go on anymore to less general ones.
          break;
        }
      }
    }
  }

  groupTests('core', $poolOfMnemonics_core);

  exit(0);
  
  // ---------------------------------------------------------------------------
  //                             x87 instructions
  // ---------------------------------------------------------------------------

  $poolOfMnemonics_x87 = loadIndex('x87');

  $poolOfPatterns_x87 = array(
    $opcodeOnlyPattern,
    getPattern('sti'),
    getPattern('sti', 'st0'),
    getPattern('ax'),
    getPattern('m80'),
    getPattern('mcustom'),
  );

  createTests('x87', $poolOfPatterns_x87, $poolOfMnemonics_x87);
  createTests('x87', $poolOfPatterns_core_m, $poolOfMnemonics_x87);

  groupOpcodeOnlyTests('x87', $poolOfMnemonics_x87);

  // ---------------------------------------------------------------------------
  //                             MMX instructions
  // ---------------------------------------------------------------------------

  $poolOfMnemonics_mmx = loadIndex('mmx');

  $poolOfPatterns_mmx = array(
    $opcodeOnlyPattern,
    getPattern('mm'),
    getPattern('mm' , 'mm'),
    getPattern('mm' , 'r32'),
    getPattern('mm' , 'r64'),
    getPattern('mm' , 'r32'),
    getPattern('mm' , 'm64'),
    getPattern('r32', 'mm'),
    getPattern('r64', 'mm'),
    getPattern('r32', 'mm'),
    getPattern('m64', 'mm'),
    getPattern('mm' , 'imm8'),
  );

  createTests('mmx', $poolOfPatterns_mmx, $poolOfMnemonics_mmx);
  createTests('mmx', $poolOfPatterns_core_m, $poolOfMnemonics_mmx);
  createTests('mmx', $poolOfPatterns_core_imm, $poolOfMnemonics_mmx);
  createTests('mmx', $poolOfPatterns_core_r, $poolOfMnemonics_mmx);

  groupOpcodeOnlyTests('mmx', $poolOfMnemonics_mmx);

  // ---------------------------------------------------------------------------
  //              Virtualization opcodes: Intel VT-X, AMD-V
  // ---------------------------------------------------------------------------

  $poolOfMnemonics_intelvtx = loadIndex('intel-vt-x');
  $poolOfMnemonics_amdv     = loadIndex('amd-v');

  $poolOfPatterns_vm = array(
    $opcodeOnlyPattern,
    getPattern('r32'),
    getPattern('r64'),
    getPattern('m32'),
    getPattern('m64'),
    getPattern('r64', 'r64'),
    getPattern('r32', 'r32'),
    getPattern('r64', 'm64'),
    getPattern('r32', 'm32'),
    getPattern('m64', 'r64'),
    getPattern('m32', 'r32'),
  );

  createTests('intel-vt-x' , $poolOfPatterns_vm  , $poolOfMnemonics_intelvtx);
  createTests('amd-v'      , $poolOfPatterns_vm  , $poolOfMnemonics_amdv);

  groupOpcodeOnlyTests('intel-vt-x', $poolOfMnemonics_intelvtx);
  groupOpcodeOnlyTests('amd-v'     , $poolOfMnemonics_amdv);

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
