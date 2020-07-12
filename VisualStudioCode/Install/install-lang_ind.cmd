REM Install  : install-lang_ind.cmd i
REM Force ins: install-lang_ind.cmd f
REM Uninstall: install-lang_ind.cmd u

@echo off

setlocal enabledelayedexpansion

if "%~1"=="u" ( set action=u ) else if "%~1"=="f"  ( set action=f ) else ( set action=i )

call install_base.cmd %action% "aaronpowell.vscode-profile-switcher Shan.code-settings-sync funkyremi.vscode-google-translate alefragnani.bookmarks gruntfuggly.todo-tree Tyriar.sort-lines jrebocho.vscode-random johnpapa.vscode-peacock PKief.material-icon-theme nhoizey.gremlins anseki.vscode-color lihui.vs-color-picker" "lang_ind"

exit /b 0
