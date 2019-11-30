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

  foreach (scandir('.') as $subdir)
  {
    if (is_dir($subdir) && ($subdir[0] !== '_') && ($subdir[0] !== '.'))
    {
      // Open list of mnemonics inside given group.
      $indexPath = $subdir . '/__index.txt';

      if (file_exists($indexPath))
      {
        echo "\n";
        echo "  # -------------------------------------------------------------------\n";
        echo "  #   $subdir:\n";
        echo "  # -------------------------------------------------------------------\n\n";

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
            echo '  # ', trim(substr($line, 1)), "\n";
          }
          else if (!empty($line))
          {
            // Get mnemonic and pool of syntaxes e.g. r,r for
            // register-register operands.
            $spaceIdx       = strpos($line, ' ');
            $mnemonic       = substr($line, 0, $spaceIdx);
            $patternsAsText = substr($line, $spaceIdx);
            $poolOfPatterns = explode('|', $patternsAsText);

            foreach ($poolOfPatterns as $patternKey)
            {
              $patternKey = trim($patternKey);
            
              echo $patternKey, "\n";
            }
          
          }
        }
      }
    }
  }
