@echo off

echo Seting environment...

set CORE=%CD%
set BUILD=%CD%\_build
set COMPILER=%CD%\..\
set TESTS=%CD%\..\..\Tests

del %BUILD%\pass1.exe
del %BUILD%\pass2.exe
del source.exe

mkdir %BUILD%
