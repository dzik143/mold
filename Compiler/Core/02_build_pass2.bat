call 01_build_pass1.bat

echo Build: pass #2...

cd   %COMPILER%
%BUILD%\pass1 --asm -O1 Main.mold >%BUILD%\pass2.asm

cd   %CORE%
call fasm %BUILD%\pass2.asm

copy %BUILD%\pass2.exe %TESTS%\mold.exe