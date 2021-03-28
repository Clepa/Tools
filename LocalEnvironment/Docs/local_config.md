# Local environment

- [Local environment](#local-environment)
  - [Manual configuration](#manual-configuration)
    - [Download](#download)
      - [Tools](#tools)
      - [Applications](#applications)
    - [Setup](#setup)
      - [Git](#git)
      - [Node.js](#nodejs)
      - [NPM](#npm)
        - [Install recommended packages](#install-recommended-packages)
      - [Yarn](#yarn)
      - [IntelliJ Community](#intellij-community)
    - [Environment variables](#environment-variables)
  - [Easy go](#easy-go)
  - [Result](#result)
  - [Backup](#backup)
  - [What about...?](#what-about)
    - [Chrome](#chrome)
  - [WIP](#wip)
    - [Tools and applications](#tools-and-applications)
    - [Others](#others)

Guide to add the following applications without admin rights. One of the objectives of this guide will be to put all the applications and its configurations into the same common folder to facilitate to do manual backups or move between computers.

## Manual configuration

Read [Easy go](#easy-go) if you want to try a semiautomatic configuration.

### Download

Download these tools and applications.

#### Tools

| Tool         | Version                                                                                                                                                | Download                                         |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------ |
| Git          | [2.30.2](https://github.com/git-for-windows/git/releases/download/v2.30.2.windows.1/PortableGit-2.30.2-64-bit.7z.exe)                                  | [Source](https://git-scm.com/download/win)       |
| Java         | [jdk-11.0.10+9](https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.10%2B9/OpenJDK11U-jdk_x64_windows_hotspot_11.0.10_9.zip) | [Source](https://adoptopenjdk.net/releases.html) |
| Apache Maven | [3.6.3](https://ftp.cixug.es/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip)                                                           | [Source](https://maven.apache.org/download.cgi)  |
| Node.js      | [14.16.0](https://nodejs.org/dist/v14.16.0/node-v14.16.0-win-x64.zip)                                                                                  | [Source](https://nodejs.org/en/download/)        |

| License                                                            | Comments                                                 |
| ------------------------------------------------------------------ | -------------------------------------------------------- |
| [Source](https://github.com/git/git/blob/v2.30.2/COPYING)          | Unzip and run `post-install.bat` or just run the `.exe`. |
| [Source](https://adoptopenjdk.net/about.html)                      | &nbsp;                                                   |
| [Source](https://github.com/apache/maven/blob/maven-3.6.3/LICENSE) | &nbsp;                                                   |
| [Source](https://github.com/nodejs/node/blob/v14.16.0/LICENSE)     | &nbsp;                                                   |

<!--
Apache Maven: https://github.com/apache/maven/blob/cecedd343002696d0abb50b32b541b8a6ba2883f/LICENSE.
Node.js: https://github.com/nodejs/node/blob/bd60e93357a118204ea238d94e7a9e4209d93062/LICENSE.
Git: https://github.com/git/git/blob/94f6e3e283f2adfc518b39cfc39291f1c2832ad0/COPYING.
-->

#### Applications

| Application        | Version                                                                                                                                     | Download                                                                    |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| Visual Studio Code | [1.54.2](https://az764295.vo.msecnd.net/stable/fd6f3bce6709b121a895d042d343d71f317d74e7/VSCode-win32-x64-1.54.2.zip)                        | [Source](https://code.visualstudio.com/Download)                            |
| IntelliJ Community | [2020.3.2](https://download.jetbrains.com/idea/ideaIC-2020.3.2.win.zip)                                                                     | [Source](https://www.jetbrains.com/idea/download/#section=windows)          |
| Git Extensions     | [3.4.3](https://github.com/gitextensions/gitextensions/releases/download/v3.4.3/GitExtensions-Portable-3.4.3.9999-d4b0f48bb.zip)            | [Source](https://github.com/gitextensions/gitextensions/releases)           |
| Postman            | [8.0.7](https://dl.pstmn.io/download/version/8.0.7/win64)                                                                                   | [Source](https://www.postman.com/downloads/)                                |
| Fiddler Classic    | `5.0.20204.45441`. [Latest](https://telerik-fiddler.s3.amazonaws.com/fiddler/FiddlerSetup.exe)                                              | [Source](https://www.telerik.com/support/whats-new/fiddler/release-history) |
| Notepad++          | [7.9.4](https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9.4/npp.7.9.4.portable.x64.zip)                         | [Source](https://notepad-plus-plus.org/downloads/)                          |
| Greenshot          | [1.2.10.6](https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.10.6/Greenshot-NO-INSTALLER-1.2.10.6-RELEASE.zip) | [Source](https://getgreenshot.org/version-history/)                         |
| ConEmu             | [21.03.14](https://github.com/Maximus5/ConEmu/releases/download/v21.03.14/ConEmuPack.210314.7z)                                             | [Source](https://github.com/greenshot/greenshot/releases)                   |

| License                                                                              | Comments                                                                                                                                                              |
| ------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Source](https://github.com/microsoft/vscode/blob/1.54.2/LICENSE.txt)                | [Portable mode](https://code.visualstudio.com/docs/editor/portable): download the `.zip`, unzip and create `data` folder within Visual Studio Code folder.            |
| [Source](https://github.com/JetBrains/intellij-community/blob/203.7148/LICENSE.txt)  | &nbsp;                                                                                                                                                                |
| [Source](https://github.com/gitextensions/gitextensions/blob/v3.4.3/LICENSE.md)      | &nbsp;                                                                                                                                                                |
| [Source](https://www.postman.com/legal/eula/)                                        | &nbsp;                                                                                                                                                                |
| [Source](https://www.telerik.com/purchase/license-agreement/fiddler)                 | Unzip the `.exe`, open unzipped folder `$PLUGINSDIR`, and unzip again the `.exe`. Now you can run the `Fiddler.exe`. [Details](https://stackoverflow.com/a/21756167). |
| [Source](https://github.com/notepad-plus-plus/notepad-plus-plus/blob/v7.9.4/LICENSE) | &nbsp;                                                                                                                                                                |
| [Source](https://getgreenshot.org/faq/do-i-have-to-pay-for-using-greenshot/)         | &nbsp;                                                                                                                                                                |
| [Source](https://github.com/Maximus5/ConEmu/blob/v21.03.14/LICENSE)                  |                                                                                                                                                                       |

<!-- TODO: add next line to last table cell -->
<!-- [Portable instructions](https://conemu.github.io/en/ConEmuXml.html#search-sequence), [7-Zip package](https://conemu.github.io/en/VersionComparison.html#7-zip-package), [FAQ](https://conemu.github.io/en/FAQ-3.html#q-3-1). Also included in Git Extensions -->

<!--
Visual Studio Code: https://github.com/microsoft/vscode/blob/fd6f3bce6709b121a895d042d343d71f317d74e7/LICENSE.txt, https://code.visualstudio.com/license.
IntelliJ: https://github.com/JetBrains/intellij-community/blob/0b1181001cbe674062d9023d8983963aff3072bd/LICENSE.txt, https://www.jetbrains.com/opensource/idea/, https://www.jetbrains.com/idea/features/editions_comparison_matrix.html, https://intellij-support.jetbrains.com/hc/en-us/community/posts/115000698770/comments/115000584024.
Git Extensions: https://github.com/gitextensions/gitextensions/blob/d4b0f48bbf3e39a71f5d7ff5231be5678d4aa0f1/LICENSE.md.
Postman: https://support.postman.com/hc/en-us/articles/360003675853-Commercial-Use-Restrictions.
Notepad++: https://github.com/notepad-plus-plus/notepad-plus-plus/blob/58f0a6177004f6e636be7a962080f4b2c72d18a5/LICENSE.
Greenshot: https://github.com/greenshot/greenshot/blob/37b596d2367c16c9aa00c50345f67999485a7d0f/LICENSE.
ConEmu: https://github.com/Maximus5/ConEmu/blob/8cc8f95bfe40ea1ec9c4a55ce158cca7a875d7b5/LICENSE.
-->

### Setup

#### Git

```ini
# %USERPROFILE%\.gitconfig
[credential]
  helper = manager
[user]
  name = <name>
  email = <email>
# TODO: copy missing properties.
```

#### Node.js

#### NPM

```properties
# %USERPROFILE%\.npmrc
prefix=C:\Tools\_data\npm
cache=C:\Tools\_data\npm\cache
tmp=C:\Tools\_data\npm\tmp
```

##### Install recommended packages

- Install Angular: `npm i -g @angular/cli`.
- Install Yarn: `npm i -g yarn`.

#### Yarn

```properties
# %USERPROFILE%\.yarnrc
prefix "C:\\Tools\\_data\\Yarn"
global-folder "C:\\Tools\\_data\\Yarn\\global"
cache-folder "C:\\Tools\\_data\\Yarn\\cache"
"--link-folder" "C:\\Tools\\_data\\Yarn\\link"
```

#### IntelliJ Community

TODO: basic configuration.

No need to configure proxy.

### Environment variables

Configuration needed for applications to: properly work, can be used in command line, be discoverable by others applications.

- Open environment variables: `Win` + `R` > `cmd` > `rundll32.exe sysdm.cpl,EditEnvironmentVariables`.
- Configure environment variables
  - Add new user variables:
    - Variable name `TOOLS`, variable value: ``.
    - Variable name `JAVA_HOME`, variable value: ``.
  - `PATH` variable:
    - Double click on `PATH` (or create if it does not exist)
    - In the new window click on `Edit text...`
    - Add at the end: ``.

## Easy go

In the `.\Tools` all the applications are already configured with this setup.

:warning: Before running the script(s) read carefully the warn comments: :warning:

- Run this at your own risk.
- If some environment variables are already present in `PATH` these will be duplicated and other variables with the same name will be overwritten.
- Verify the configuration at the end. Use log files to restore previous values if something is wrong.

Actions:

- Run the script to create all the needed environment variables: `call .\Scripts\create_environment.cmd`.

Summary:

- Configure user environment variables.
- Move `.\Tools` to `C:\Tools`.

## Result

- Print structure folder.

## Backup

Backup of the `C:\Tools` folder.

- Create .zip with all: applications, `_data` (optional) and config.
- Configurable: add `_data`.
- Copy Chrome bookmarks.

## What about...?

### Chrome

You can manually copy the bookmarks when doing the backup or move the user data to the common folder:

- <instructions...>

The passwords should be manually exported: <instructions...>

## WIP

### Tools and applications

- [Python](https://www.python.org/): [latest and 2.7](https://www.python.org/downloads/windows/).
- [nvm](https://github.com/nvm-sh/nvm).
- [Yarn 2+](https://yarnpkg.com/getting-started).
- [MiKTeX](https://miktex.org/).

- [Microsoft Teams](https://www.microsoft.com/en-us/microsoft-teams/download-app).
- [Fiddler Everywhere](https://www.telerik.com/download/fiddler-everywhere).
- [SoapUI](https://www.soapui.org/tools/soapui/).
- [Cmder](https://cmder.net/).
- [Eclipse](https://www.eclipse.org/downloads/).

### Others

- Script to automatically download the _latest_ version of all the programs.

<!--
7-zip

Verificar: carpeta de red. Sé que existe, pero he perdido la ruta...
 -->

<!--
D:\Users\Clepa\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Python\Python38\Scripts\;C:\Program Files\Python\Python38\;D:\Users\Clepa\AppData\Local\Programs\Python\Launcher\;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;D:\Users\Clepa\Downloads\prince-14.1-win64\bin;%TOOLS%\Git\Current\bin;%TOOLS%\Visual Studio Code\Current\bin;
 -->
