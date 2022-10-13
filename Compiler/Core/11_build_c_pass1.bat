call 00_setenv.bat

echo Build: pass #1...

cd   %COMPILER%
call 1.bat
mold --output-c Main.mold >%BUILD%\pass1.c

cd   %CORE%
gcc %BUILD%/pass1.c -o %BUILD%/pass1-c.exe c/MoldCore.c c/MoldMemory.c c/MoldVariantArray.c c/MoldVariantMap.c c/MoldVariantObject.c c/MoldForDriver.c -Ic -g

copy %BUILD%\pass1-c.exe %TESTS%\mold.exe

%BUILD%\pass1-c.exe --debug source.mold
gcc source.c -o source.exe c/MoldCore.c c/MoldMemory.c c/MoldVariantArray.c c/MoldVariantMap.c c/MoldVariantObject.c c/MoldForDriver.c -Ic -g