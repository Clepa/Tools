@echo off

rem Move to file's folder to run the script.

setlocal enabledelayedexpansion

rem Test values.
set extensions="qwerty aaronpowell.vscode-profile-switcher Shan.code-settings-sync"
set counter=0

rem OK tests.
call install_base.cmd i %extensions% test 1> nul
if %errorlevel% neq 0 ( call :test_ko 10 ) else ( call :test_ok 10 )

call install_base.cmd f %extensions% test 1> nul
if %errorlevel% equ 1 ( call :test_ko 3 ) else ( call :test_ok 3 )

call install_base.cmd u %extensions% test 1> nul
if %errorlevel% equ 1 ( call :test_ko 3 ) else ( call :test_ok 3 )

rem KO tests.
call install_base.cmd 1> nul
if %errorlevel% neq 1 ( call :test_ko 4 ) else ( call :test_ok 4 )

call install_base.cmd p1 1> nul
if %errorlevel% neq 1 ( call :test_ko 3 ) else ( call :test_ok 3 )

call install_base.cmd i 1> nul
if %errorlevel% neq 2 ( call :test_ko 3 ) else ( call :test_ok 3 )

call install_base.cmd f "p2
if %errorlevel% neq 2 ( call :test_ko 3 ) else ( call :test_ok 3 )

call install_base.cmd u p2"
if %errorlevel% neq 2 ( call :test_ko 3 ) else ( call :test_ok 3 )

exit /b 0

:test_ok
set /a counter+=%~1 & echo !counter!: test success. & echo ---- & exit /b 0

:test_ko
set /a counter+=%~1 & echo !counter!: test failed. & echo ---- & pause & exit /b 0
