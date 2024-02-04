@echo off

if "%1"=="--help" goto help

echo Loading...

rem Save current directory and start from the win32\tool\generator folder
pushd %~dp0generator
call dart bin\update_goldens.dart

goto end

:help
echo update_goldens -- Updates golden files.
echo.

:end
rem Restore old working directory
popd
