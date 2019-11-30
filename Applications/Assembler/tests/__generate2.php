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

  // ---------------------------------------------------------------------------
  //                  Helper functions: create patterns
  // ---------------------------------------------------------------------------

  $POOL_OF_OPERANDS = array();

  $OPERANDS_REPLACE_MAP = array(
    'm48'  => 'mcustom',
    'm94'  => 'mcustom',
    'm108' => 'mcustom',
    'm112' => 'mcustom',
    'm128' => 'mcustom',
    'm224' => 'mcustom',
    'm512' => 'mcustom',
    'm?'   => 'mcustom',

    // TODO: Review it.
    'md-far'   => 'mcustom',
    'ptr16-16' => 'mcustom',
    'ptr16-32' => 'mcustom',
    'ptr16-64' => 'mcustom',
  );

  function loadPoolOfOperands($operandType)
  {
    global $POOL_OF_OPERANDS;
    global $OPERANDS_REPLACE_MAP;

    $rv = null;

    if (isset($operandType))
    {
      if (isset($OPERANDS_REPLACE_MAP[$operandType]))
      {
        $operandType = $OPERANDS_REPLACE_MAP[$operandType];
      }

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
              $src .= '${mnemonic} ' . $x . ', ' . $y . ',' . $z . "\r\n";
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
            $src .= '${mnemonic} ' . $x . ', ' . $y . "\r\n";
          }
        }
      }
      else if (isset($typeX))
      {
        // opcode x
        foreach ($poolX as $x)
        {
          $src .= '${mnemonic} ' . $x . "\r\n";
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

  // List mnemonic groups.
  foreach (scandir('.') as $subdir)
  {
    if (is_dir($subdir) && ($subdir[0] !== '_') && ($subdir[0] !== '.'))
    {
      // Open list of mnemonics inside given group.
      $indexPath = $subdir . '/__index.txt';

      if (file_exists($indexPath))
      {
        // Process all mnemonics within group one-by-one.
        echo "\n";
        echo "-------------------------------------------------------------------\n";
        echo "  $subdir:\n";
        echo "-------------------------------------------------------------------\n";

        foreach (file($indexPath) as $line)
        {
          // Remove end of line.
          $line = trim(preg_replace("/\r\n|\r|\n/", '', $line));

          if (!empty($line) && ($line[0] !== ';'))
          {
            // Get mnemonic and pool of syntaxes e.g. r,r for
            // register-register operands.
            $spaceIdx       = strpos($line, ' ');
            $mnemonic       = substr($line, 0, $spaceIdx);
            $patternsAsText = substr($line, $spaceIdx);
            $poolOfPatterns = explode('|', $patternsAsText);
            $source         = "use64\r\n";

            echo $mnemonic, '...';

            // Process each operands patterns matching to given mnemonic.
            foreach ($poolOfPatterns as $pattern)
            {
              $pattern = trim($pattern);

              $source .= "; ------------------------------------------------------------------------------\r\n";
              $source .= '; opcode '.$pattern."\r\n";
              $source .= "; ------------------------------------------------------------------------------\r\n";

              if ($pattern === '-')
              {
                // No operands (opcode only).
                $source .= $mnemonic;
              }
              else
              {
               // There is at least one operand.
                // Create list of operands.
                // Possible improvement: handle >3 operands.
                $operands = explode(',', $pattern);
                $op1      = isset($operands[0]) ? $operands[0] : null;
                $op2      = isset($operands[1]) ? $operands[1] : null;
                $op3      = isset($operands[2]) ? $operands[2] : null;

                // Get pattern source matching given operands combination.
                $patternObj    = getPattern($op1, $op2, $op3);
                $patternSource = $patternObj['src'];

                // Expand ${mnemonic} placeholder and append one test
                // suite for current operands combination.
                $source .= str_replace('${mnemonic}', $mnemonic, $patternSource);
              }

              $source .= "\r\n";
            }

            // Save created test suite into new asm file.
            $asmPath = $subdir.'/'.$mnemonic.'.asm';

            file_put_contents($asmPath, $source);

            // Assemble test source to make binary file for comparison.
            exec("fasm $asmPath", $fasmOutput, $fasmStatus);

            if ($fasmStatus !== 0)
            {
              die("error: could not assemble file: '".$asmPath."'");
            }

            echo "OK\n";
          }
        }
      }
    }
  }
