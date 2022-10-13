call 00_setenv.bat

echo Build: pass #1...

cd   %COMPILER%
call 1.bat
mold --output-c -O1 Main.mold >%BUILD%\pass1.c

cd   %CORE%
gcc %BUILD%/pass1.c -o %BUILD%/pass1-c.exe -Ic -Lc -lmold-static -g

copy %BUILD%\pass1-c.exe %TESTS%\mold.exe

%BUILD%\pass1-c.exe --debug source.mold
%BUILD%\pass1-c.exe --output-c source.mold > source.c
gcc source.c -o source.exe -Ic -Lc -lmold-static -g