@echo off

rem Install  : install-lang_ind.cmd i
rem Force ins: install-lang_ind.cmd f
rem Uninstall: install-lang_ind.cmd u

setlocal enabledelayedexpansion

if "%~1"=="u" ( set action=u ) else if "%~1"=="f" ( set action=f ) else ( set action=i )

echo ***General (language independent)***
call install_base.cmd %action% "aaronpowell.vscode-profile-switcher Shan.code-settings-sync streetsidesoftware.code-spell-checker funkyremi.vscode-google-translate alefragnani.bookmarks gruntfuggly.todo-tree Tyriar.sort-lines jrebocho.vscode-random johnpapa.vscode-peacock PKief.material-icon-theme nhoizey.gremlins anseki.vscode-color lihui.vs-color-picker bierner.emojisense"

echo ***General (languages)***
call install_base.cmd %action% "EditorConfig.EditorConfig esbenp.prettier-vscode SonarSource.sonarlint-vscode richie5um2.vscode-sort-json mechatroner.rainbow-csv"

echo ***Web***
call install_base.cmd %action% "firefox-devtools.vscode-firefox-debug ChakrounAnas.turbo-console-log wix.vscode-import-cost kisstkondoros.vscode-gutter-preview"

echo ***Angular***
call install_base.cmd %action% "dbaeumer.vscode-eslint angular.ng-template SimonTest.simontest johnpapa.angular2"

echo ***Markdown***
call install_base.cmd %action% "yzhang.markdown-all-in-one shd101wyy.markdown-preview-enhanced davidanson.vscode-markdownlint"

echo ***Git***
call install_base.cmd %action% "eamodio.gitlens GitHub.vscode-pull-request-github codezombiech.gitignore"

exit /b 0
