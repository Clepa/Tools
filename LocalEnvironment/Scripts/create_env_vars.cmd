@echo off

rem Run with:
rem CMD: call create_env_vars.cmd
rem Git Bash: ./create_env_vars.cmd

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

set "tools=TOOLS"
rem Not Expanded Tools value.
set "neTools=%%%tools%%%"

call :get_reg_value "%tools%" 1
call :get_reg_value "JAVA_HOME" 1
call :get_reg_value "NPM_CONFIG_USERCONFIG" 1

rem Add or update variables.
setx TOOLS "C:\Tools" > nul
setx JAVA_HOME "%neTools%\Java\OpenJDK\Current" > nul
setx NPM_CONFIG_USERCONFIG "%neTools%\_config\.npmrc" > nul

rem PATH user environment variable has a default limit size of 1024 characters (without changing registry).
rem In case you see the warning message: "WARNING: The data being saved is truncated to 1024 characters.".
rem Consider setting only the mandatory ones.
rem Mandatory:
call :get_reg_value "PATH" 1
set "currentEnvPath=%result%"
setx PATH "%currentEnvPath%;%neTools%\_data\Yarn\bin;%neTools%\_data\npm;%neTools%\ApacheMaven\Current\bin;%neTools%\Git\Current\bin;%neTools%\Git\Current\cmd;%neTools%\Java\OpenJDK\Current\bin;%neTools%\Node.js\Current;" > nul

rem Optional:
call :get_reg_value "PATH" 1
set "currentEnvPath=%result%"
setx PATH "%currentEnvPath%;%neTools%\Android\AndroidStudio\Current\bin;%neTools%\JetBrains\IntelliJ\Current\bin;%neTools%\JetBrains\PyCharm\Current\bin;%neTools%\JetBrains\WebStorm\Current\bin;%neTools%\JetBrains\Writerside\Current\bin;%neTools%\VSCode\Current\bin;%neTools%\LaTeX\MiKTeX\Current\texmfs\install\miktex\bin\x64;" > nul

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
