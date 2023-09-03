call 00_setenv.bat

echo Build: pass #1...

cd   %COMPILER%
call 1.bat
mold --asm Main.mold >%BUILD%\pass1.asm

cd   %CORE%
call fasm %BUILD%\pass1.asm

copy %BUILD%\pass1.exe %TESTS%\mold.exe

%BUILD%\pass1.exe --debug source.mold

_build\pass1.exe --asm -O1 source.mold > source-pass1.asm
call fasm source-pass1.asm
source-pass1.exe