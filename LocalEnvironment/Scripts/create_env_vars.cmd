@echo off

rem Run using: call create_environment.cmd

setlocal enabledelayedexpansion

for /f "usebackq tokens=1,2,3,4,5,6,7 delims=:/. " %%a in ('%date% %time%') do set "startDate=%%c%%b%%a_%%d%%e%%f%%g"

set "outputFile=env_vars-%startDate%.txt"

rem Copy current environment variables before updating it: values are expanded.
rem https://stackoverflow.com/a/20691061
echo ------ ALL ENVIRONMENT VARIABLES: EXPANDED ------ > %outputFile%
echo( >> %outputFile%
set >> %outputFile%
echo( >> %outputFile%
echo ------ ONLY MODIFIED VARIABLES: NOT EXPANDED ------ >> %outputFile%
echo( >> %outputFile%

call :get_reg_value "PATH" 1
set "currentEnvPath=%result%"

call :get_reg_value "TOOLS" 1
call :get_reg_value "JAVA_HOME" 1
call :get_reg_value "NPM_CONFIG_USERCONFIG" 1

rem Add or update variables.
setx TOOLS "C:\Tools" > nul
setx JAVA_HOME "%%TOOLS%%\Java\OpenJDK\Current" > nul
setx NPM_CONFIG_USERCONFIG "%%TOOLS%%\_config\.npmrc" > nul

rem if not ""=="%currentEnvPath%" ( echo Results: %result% ) else ( echo No results )
setx PATH "%currentEnvPath%;%%TOOLS%%\ApacheMaven\Current\bin;%%TOOLS%%\Git\Current\cmd;%%TOOLS%%\Java\OpenJDK\Current\bin;%%TOOLS%%\Node.js\Current;%%TOOLS%%\VSCode\Current\bin;%%TOOLS%%\_data\npm;" > nul

exit /b 0

:get_reg_value
  rem Source: https://stackoverflow.com/a/45566845.
  rem Obtain user environment variable and log the current value.
  rem params: %1: user environment variable to get; %2: 1 to log the current value.
  setlocal

  set "tmp_name=_tmp.txt"
  reg query HKCU\Environment /v %1 > %tmp_name% 2> nul

  rem if 0==%errorlevel% ( for /f "usebackq tokens=2,*" %%a in (`reg query HKCU\Environment /v %1`) do set "val=%%b" ) else ( echo %1 not found in registry )
  if 0==%errorlevel% ( for /f "usebackq tokens=2,*" %%a in (%tmp_name%) do set "val=%%b" ) else ( echo %1 not found in registry )

  if 1==%2 ( echo %~1=%val% >> %outputFile% )

  del %tmp_name%

  endlocal & set result=%val%

rem cd D:\Users\Clepa\Google Drive\Personal\Programacio\Others\Tools\LocalEnvironment\Scripts
rem PATH=D:\Users\Clepa\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Python\Python38\Scripts\;C:\Program Files\Python\Python38\;D:\Users\Clepa\AppData\Local\Programs\Python\Launcher\;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;
