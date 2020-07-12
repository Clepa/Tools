@echo off
rem Install using the VSC defined in PATH.
rem Params:
rem %1: i=install extensions f=install with --force, u=uninstall extensions.
rem %2: double-quoted string with extensions names separated by blank space.
rem %3: optional, string to add to the log files names.

setlocal enabledelayedexpansion

rem Default values.
set debug=true
set logPath="Log\"

rem Validate and process input parameters.
if "%~1"=="i" (
  set installAction=--install-extension
  set force=
  set strInstallAction=Installed
) else if "%~1"=="f" (
  set installAction=--install-extension
  set force=--force
  set strInstallAction=Installed
) else if "%~1"=="u" (
  set installAction=--uninstall-extension
  set force=
  set strInstallAction=Uninstalled
) else (
  goto :param_error_1
)

set param2=%2
if not !param2:~0^,1!!param2:~-1!! equ "" (
  goto :param_error_2
) else (
  set extensions=%~2
)

if "%~3"=="" (
  set outputFile=%logPath%output.log
  set errorFile=%logPath%error.log
) else (
  set outputFile=%logPath%output-%3.log
  set errorFile=%logPath%error-%3.log
)
if not exist %logPath% mkdir %logPath%
break > %outputFile%
break > %errorFile%

rem Install the extensions.
set /a "counterOk=counterKo=0"
(
  for %%v in (%extensions%) do (
    call  code %installAction% %%v %force% 1>> %outputFile% 2>> %errorFile% && (
      set /a counterOk+=1
      rem Two cases: #1 add extensions, #2 append extension.
      if "!extOk!"=="" ( set "extOk=!extOk!%%v" ) else ( set "extOk=!extOk!, %%v" )
      if %debug%==true ( echo %strInstallAction%: %%v. )
    ) || (
      set /a counterKo+=1
      if "!extKo!"=="" ( set "extKo=!extKo!%%v" ) else ( set "extKo=!extKo!, %%v" )
      if %debug%==true ( echo Error: %%v. )
    )
  )
)

rem Output the results.
set /a counterTotal=counterOk+counterKo
if %debug%==true (
  echo.
  echo SUMMARY.
  echo    %strInstallAction% - %counterOk%/%counterTotal% -^> [%extOk%]
  echo    Error - %counterKo%/%counterTotal% -^> [%extKo%]
  echo.
  echo The installation process finished. Check log files for more info: %outputFile:"=% and %errorFile:"=%.
  echo.
)

endlocal

exit /b 0

rem Error labels.
:param_error_1
if %debug%==true ( echo Input parameter %%1 is not valid: %1. ) & exit /b 1

:param_error_2
if %debug%==true ( echo Input parameter %%2 is not valid: !param2!. ) & exit /b 2

rem :param_error
rem echo Input parameter %%%~1 is not valid: %~2. & endlocal & exit /b %~1
