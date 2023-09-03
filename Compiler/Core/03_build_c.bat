call 00_setenv.bat

echo Build C: pass #1...

cd   %COMPILER%
call 1.bat
mold --asm Main.mold >%BUILD%\pass1.asm

cd   %CORE%
call fasm %BUILD%\pass1.asm

copy %BUILD%\pass1.exe %TESTS%\mold.exe

%BUILD%\pass1.exe --output-c -O1 source.mold > source.c

del a.exe
gcc source.c -Ic -Lc -lmold-static -g
a