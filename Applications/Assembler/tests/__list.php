<?php

  foreach (scandir('.') as $subdir)
  {
    if (is_dir($subdir) && ($subdir[0] !== '_') && ($subdir[0] !== '.'))
    {
      echo "\n";
      echo "-------------------------------------------------------------------\n";
      echo "  $subdir:\n";
      echo "-------------------------------------------------------------------\n";
      
      $lastMnemonic = null;
      
      foreach(scandir($subdir) as $item)
      {
        if (strpos($item, '.bin') !== false)
        {
          $item     = str_replace('.bin', '', $item);
          $tokens   = explode('_', $item);
          $mnemonic = $tokens[0];
          
          if ($mnemonic !== $lastMnemonic)
          {
            echo "\n", $mnemonic, "\n";
            
            $lastMnemonic = $mnemonic;
          }
   
          echo '  ', $item, "\n";
        }
      }
    }
  }
