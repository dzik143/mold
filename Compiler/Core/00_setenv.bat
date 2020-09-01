@echo off

echo Seting environment...

set CORE=%CD%
set BUILD=%CD%\_build
set COMPILER=%CD%\..\
set TESTS=%CD%\..\..\Tests

mkdir %BUILD%
