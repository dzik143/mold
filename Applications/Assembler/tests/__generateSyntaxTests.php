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

  $IS_VISITED = array();
  
  $TESTS_MAP = array(
    'r,r | r,m | m,r | r,imm | m,imm'             => [],
    'r,cl | r,imm8 | m,cl | m,imm8'               => [],
    'r | m'                                       => [],
    'r16 | m16 | r64 | m64 | imm8 | imm16'        => [],
    'r16 | m16 | r64 | m64'                       => [],
    'r,r | r,m | m,r | r,imm | m,imm | r64,imm64' => [],
    'r,r | r,m | m,r'                             => [],

    'al,imm8 | ax,imm8 | eax,imm8 | al,dx | ax,dx | eax,dx' => [],
    'imm8,al | imm8,ax | imm8,eax | dx,al | dx,ax | dx,eax' => [],
    'rd,r8 | rd,m8 | r32,r16 | r32,m16 | r64,r16 | r64,m16' => [],
    'rd,rd,cl | rd,rd,imm8 | md,rd,cl | md,rd,imm8'         => [],    
    'rd,m8 | rd,m16 | rd,m32 | rd,m64'                      => [],
    'imm8'              => [],
    '- | rd | md'       => [],
    '- | imm16'         => [],
    '-'                 => [],
    'imm16,imm8'        => [],
    'r16 | r64 | m16'   => [],
    'rd,r16 | rd,m16'   => [],
    'rd | m16'          => [],
    'r16 | m16'         => [],
    'm48'               => [],
    'm80'               => [],
    'rd,rd | rd,md'     => [],
    'rd,rd | md,rd'     => [],
    'rd,md-far'         => [],
    'r8 | m8'           => [],
    'r32 | r64'         => [],
    'r,r | m,r'         => [],
    'm'                 => [],
    'm64'               => [],
    'r64,r32 | r64,m32' => [],
    'm128'              => [],
  );
  
  
  foreach (scandir('.') as $subdir)
  {
    if (is_dir($subdir) && ($subdir[0] !== '_') && ($subdir[0] !== '.'))
    {
      // Open list of mnemonics inside given group.
      $indexPath = $subdir . '/__index.txt';

      if (file_exists($indexPath))
      {
        echo "\n";
        echo "-------------------------------------------------------------------\n";
        echo " $subdir:\n";
        echo "-------------------------------------------------------------------\n\n";

        foreach (file($indexPath) as $line)
        {
          // Remove end of line.
          $line = trim(preg_replace("/\r\n|\r|\n/", '', $line));

          if (empty($line))
          {
            // Nothing to do.
          }
          else if ($line[0] === ';')
          {
            // Comment line.
            //echo '  ; ', trim(substr($line, 1)), "\n";
          }
          else if (!empty($line))
          {
            // Get mnemonic and pool of syntaxes e.g. r,r for
            // register-register operands.
            $spaceIdx       = strpos($line, ' ');
            $mnemonic       = substr($line, 0, $spaceIdx);
            $patternsAsText = trim(substr($line, $spaceIdx));

            if (!isset($IS_VISITED[$patternsAsText]))
            {
              echo $patternsAsText, "\n";
              $IS_VISITED[$patternsAsText] = true;
            }
          }
        }
      }
    }
  }
