call 11_build_c_pass1.bat

echo Build: pass #2...

cd   %COMPILER%
%BUILD%\pass1-c --output-c Main.mold >%BUILD%\pass2.c

cd   %CORE%
gcc %BUILD%/pass2.c -o %BUILD%/pass2-c.exe c/MoldCore.c c/MoldMemory.c c/MoldVariantArray.c c/MoldVariantMap.c c/MoldVariantObject.c c/MoldForDriver.c -Ic -g

copy %BUILD%\pass2-c.exe %TESTS%\mold.exe

%BUILD%\pass2-c.exe --output-c source.mold > source.c
gcc source.c -o source.exe c/MoldCore.c c/MoldMemory.c c/MoldVariantArray.c c/MoldVariantMap.c c/MoldVariantObject.c c/MoldForDriver.c -Ic -g