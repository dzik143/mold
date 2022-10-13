call 11_build_c_pass1.bat

echo Build: pass #2...

cd   %COMPILER%
%BUILD%\pass1-c --output-c -O1 Main.mold >%BUILD%\pass2.c

cd   %CORE%
gcc %BUILD%/pass2.c -o %BUILD%/pass2-c.exe -Ic -Lc -lmold-static -g

copy %BUILD%\pass2-c.exe %TESTS%\mold.exe

%BUILD%\pass2-c.exe --output-c source.mold > source.c
gcc source.c -o source.exe -Ic -Lc -lmold-static -g
