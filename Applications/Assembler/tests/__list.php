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

  $REPLACE_MAP = array(
    '-' => '()',

    'r'   => '_r(regDst)',
    'm'   => '_m(regBase, scale, regIndex, disp)',
    'imm' => '_imm(imm)',
    'rel' => '_rel(rel)',

    'r,r'     => '_r_r(regDst, regSrc)',
    'r,m'     => '_r_m(regDst, regBase, scale, regIndex, disp)',
    'm,r'     => '_m_r(regBase, scale, regIndex, disp, regSrc)',
    'r,imm'   => '_r_imm(regDst, imm)',
    'imm,r'   => '_imm_r(imm, regSrc)',
    'm,imm'   => '_m_imm(regBase, scale, regIndex, disp, imm)',
    'm,cl'    => '_m_cl(regBase, scale, regIndex, disp)',
    'r,cl'    => '_r_cl(regDst)',
    'r,dx'    => '_r_dx(regDst)',
    'dx,r'    => '_dx_r(regSrc)',
    'imm,imm' => '_imm_imm(imm1, imm2)',

    'r,r,cl'  => '_r_r_cl(regDst, regSrc)',
    'm,r,cl'  => '_r_r_cl(regBase, scale, regIndex, disp, regSrc)',
    'r,r,imm' => '_r_r_imm(regDst, regSrc, imm)',
    'm,r,imm' => '_m_r_imm(regBase, scale, regIndex, disp, imm)',

    'mm,mm'     => '_mm_mm(mmDst, mmSrc)',
    'mm,r'      => '_mm_r(mmDst, regSrc)',
    'r,mm'      => '_r_mm(regDst, mmSrc)',
    'mm,imm'    => '_mm_imm(mmDst, imm)',
    'mm,mm,imm' => '_mm_mm_imm(mmDst, mmSrc, imm)',
    'mm,m,imm'  => '_mm_m_imm(mmDst, regBase, scale, regIndex, disp, imm)',
    'mm,r,imm'  => '_mm_m_imm(mmDst, regSrc, imm)',
    'r,mm,imm'  => '_r_mm_imm(regDst, mmSrc, imm)',
    'mm,m'      => '_mm_m(mmDst, regBase, scale, regIndex, disp)',
    'm,mm'      => '_m_mm(regBase, scale, regIndex, disp, mmSrc)',

    'xmm,xmm'     => '_xmm_xmm(xmmDst, xmmSrc)',
    'xmm,m'       => '_xmm_m(xmmDst, regBase, scale, regIndex, disp)',
    'm,xmm'       => '_m_xmm(regBase, scale, regIndex, disp, xmmSrc)',
    'r,xmm'       => '_r_xmm(regDst, xmmSrc)',
    'xmm,r'       => '_xmm_r(xmmDst, regSrc)',
    'mm,xmm'      => '_mm_xmm(mmDst, xmmSrc)',
    'xmm,mm'      => '_xmm_mm(xmmDst, mmSrc)',
    'xmm,m'       => '_xmm_m(xmmDst, regBase, scale, regIndex, disp)',
    'xmm,xmm,imm' => '_xmm_xmm_imm(xmmDst, xmmSrc, imm)',
    'xmm,m,imm'   => '_xmm_m_imm(xmmDst, regBase, scale, regIndex, disp, imm)',

    'sti'         => '_sti(stDst)',
    'st0,sti'     => '_st0_sti(stSrc)',
    'sti,st0'     => '_sti_st0(stDst)',
  );

  $IS_VISITED = array();

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

              $patternKey = str_replace('imm8' , 'imm', $patternKey);
              $patternKey = str_replace('r8'   , 'r'  , $patternKey);
              $patternKey = str_replace('r16'  , 'r'  , $patternKey);
              $patternKey = str_replace('r32'  , 'r'  , $patternKey);
              $patternKey = str_replace('r64'  , 'r'  , $patternKey);
              $patternKey = str_replace('eax'  , 'r'  , $patternKey);
              $patternKey = str_replace('ax'   , 'r'  , $patternKey);
              $patternKey = str_replace('al'   , 'r'  , $patternKey);
              $patternKey = str_replace('rd'   , 'r'  , $patternKey);
              $patternKey = str_replace('md'   , 'm'  , $patternKey);
              $patternKey = str_replace('m16'  , 'm'  , $patternKey);
              $patternKey = str_replace('m32'  , 'm'  , $patternKey);
              $patternKey = str_replace('m48'  , 'm'  , $patternKey);
              $patternKey = str_replace('m64'  , 'm'  , $patternKey);
              $patternKey = str_replace('m80'  , 'm'  , $patternKey);
              $patternKey = str_replace('m94'  , 'm'  , $patternKey);
              $patternKey = str_replace('m108' , 'm'  , $patternKey);
              $patternKey = str_replace('m112' , 'm'  , $patternKey);
              $patternKey = str_replace('m128' , 'm'  , $patternKey);
              $patternKey = str_replace('m224' , 'm'  , $patternKey);
              $patternKey = str_replace('m512' , 'm'  , $patternKey);
              $patternKey = str_replace('m8'   , 'm'  , $patternKey);
              $patternKey = str_replace('m?'   , 'm'  , $patternKey);
              $patternKey = str_replace('m-far', 'm'  , $patternKey);
              $patternKey = str_replace('rel8' , 'rel', $patternKey);
              $patternKey = str_replace('rel16', 'rel', $patternKey);
              $patternKey = str_replace('rel32', 'rel', $patternKey);

              if (!isset($REPLACE_MAP[$patternKey]))
              {
                echo 'error: no replacement for pattern: ', $patternKey, "\n";
                exit(-1);
              }

              if (!isset($IS_VISITED[$mnemonic.' '.$patternKey]))
              {
                $IS_VISITED[$mnemonic.' '.$patternKey] = true;

                echo '  method ', $mnemonic, $REPLACE_MAP[$patternKey];
                echo "\n";

                $mnemonicId = 'X64_'.strtoupper($mnemonic);

                switch ($patternKey) {
                  case 'mm,mm': {
                    echo "    global $mnemonicId\n";
                    echo "    this.emitCore_r_r($mnemonicId, mmDst, mmSrc)\n";
                    break;
                  }

                  case 'mm,m': {
                    echo "    global $mnemonicId\n";
                    echo "    this.emitCore_r_m($mnemonicId, mmDst, regBase, scale, regIndex, disp)\n";
                    break;
                  }

                  default: {
                    echo "    die('not implemented: $mnemonic $patternKey')\n";
                  }
                }

                echo "  endmethod\n\n";
              }
            }
          }
        }
      }
    }
  }
