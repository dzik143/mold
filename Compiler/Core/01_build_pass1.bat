call 00_setenv.bat

echo Build: pass #1...

cd   %COMPILER%
call 1.bat
mold --asm -O1 Main.mold >%BUILD%\pass1.asm

cd   %CORE%
call fasm %BUILD%\pass1.asm

copy %BUILD%\pass1.exe %TESTS%\mold.exe

%BUILD%\pass1.exe --debug source.mold