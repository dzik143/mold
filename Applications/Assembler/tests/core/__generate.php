<?php
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

  if (file_exists('__fasm.log'))
  {
    unlink('__fasm.log');
  }
  
  function createTests($poolOfMnemonics, $postfix)
  {
    $source = file_get_contents('__pattern_'.$postfix.'.asm');
  
    foreach ($poolOfMnemonics as $mnemonic)
    {
      $newSource = str_replace('${mnemonic}', $mnemonic, $source);
      $newPath   = $mnemonic . '_'.$postfix.'.asm';
    
      file_put_contents($newPath, $newSource);
      
      system('fasm ' .$newPath.' >>__fasm.log');
      
      echo '  \'', $mnemonic, '_', $postfix, "',\n";
    }
  }

  // alu r/m, r/m/imm
  createTests($poolOfMnemonics_ALU, 'r_r');
  createTests($poolOfMnemonics_ALU, 'r_m');
  createTests($poolOfMnemonics_ALU, 'm_r');
  createTests($poolOfMnemonics_ALU, 'r_imm');
  createTests($poolOfMnemonics_ALU, 'm_imm');
  
  // xchg without imm
  createTests(['xchg'], 'r_r');
  createTests(['xchg'], 'r_m');
  createTests(['xchg'], 'm_r');
  
  // lea r, m16/32/64
  // createTests(['lea'], 'r_m');
  