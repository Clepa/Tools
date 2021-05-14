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
| Git          | [2.31.1](https://github.com/git-for-windows/git/releases/download/v2.31.1.windows.1/PortableGit-2.31.1-64-bit.7z.exe)                                  | [Source](https://git-scm.com/download/win)       |
| Java         | [jdk-11.0.11+9](https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jdk_x64_windows_hotspot_11.0.11_9.zip) | [Source](https://adoptopenjdk.net/releases.html) |
| Apache Maven | [3.8.1](https://ftp.cixug.es/apache/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.zip)                                                           | [Source](https://maven.apache.org/download.cgi)  |
| Node.js      | [14.17.0](https://nodejs.org/dist/v14.17.0/node-v14.17.0-win-x64.zip)                                                                                  | [Source](https://nodejs.org/en/download/)        |

| License                                                            | Comments                                                 |
| ------------------------------------------------------------------ | -------------------------------------------------------- |
| [Source](https://github.com/git/git/blob/v2.31.1/COPYING)          | Unzip and run `post-install.bat` or just run the `.exe`. |
| [Source](https://adoptopenjdk.net/about.html)                      | &nbsp;                                                   |
| [Source](https://github.com/apache/maven/blob/maven-3.8.1/LICENSE) | &nbsp;                                                   |
| [Source](https://github.com/nodejs/node/blob/v14.17.0/LICENSE)     | &nbsp;                                                   |

<!--
Git: https://github.com/git/git/blob/48bf2fa8bad054d66bd79c6ba903c89c704201f7/COPYING.
Java: <not found>.
Apache Maven: https://github.com/apache/maven/blob/05c21c65bdfed0f71a2f2ada8b84da59348c4c5d/LICENSE.
Node.js: https://github.com/nodejs/node/blob/aa15690b6446c56f36292d38ef064c095a374ba7/LICENSE.
-->

#### Applications

| Application        | Version                                                                                                                                     | Download                                                                    |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| Visual Studio Code | [1.56.1](https://az764295.vo.msecnd.net/stable/e713fe9b05fc24facbec8f34fb1017133858842b/VSCode-win32-x64-1.56.1.zip)                        | [Source](https://code.visualstudio.com/Download)                            |
| IntelliJ Community | [2021.1.1](https://download.jetbrains.com/idea/ideaIC-2021.1.1.win.zip)                                                                     | [Source](https://www.jetbrains.com/idea/download/#section=windows)          |
| Git Extensions     | [3.5](https://github.com/gitextensions/gitextensions/releases/download/v3.5/GitExtensions-Portable-3.5.0.11713-0a5ef9ca6.zip)               | [Source](https://github.com/gitextensions/gitextensions/releases)           |
| Postman            | [8.4.0](https://dl.pstmn.io/download/version/8.4.0/win64)                                                                                   | [Source](https://www.postman.com/downloads/)                                |
| Fiddler Classic    | `5.0.20204.45441`. [Latest](https://telerik-fiddler.s3.amazonaws.com/fiddler/FiddlerSetup.exe)                                              | [Source](https://www.telerik.com/support/whats-new/fiddler/release-history) |
| Notepad++          | [7.9.5](https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9.5/npp.7.9.5.portable.x64.zip)                         | [Source](https://github.com/notepad-plus-plus/notepad-plus-plus/releases)   |
| Greenshot          | [1.2.10.6](https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.10.6/Greenshot-NO-INSTALLER-1.2.10.6-RELEASE.zip) | [Source](https://github.com/greenshot/greenshot/releases)                   |
| ConEmu             | [21.04.22](https://github.com/Maximus5/ConEmu/releases/download/v21.04.22/ConEmuPack.210422.7z)                                             | [Source](https://github.com/Maximus5/ConEmu/releases)                       |

| License                                                                              | Comments                                                                                                                                                              |
| ------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Source](https://github.com/microsoft/vscode/blob/1.56.1/LICENSE.txt)                | [Portable mode](https://code.visualstudio.com/docs/editor/portable): download the `.zip`, unzip and create `data` folder within Visual Studio Code folder.            |
| [Source](https://github.com/JetBrains/intellij-community/blob/211.7142/LICENSE.txt)  | &nbsp;                                                                                                                                                                |
| [Source](https://github.com/gitextensions/gitextensions/blob/v3.4.3/LICENSE.md)      | &nbsp;                                                                                                                                                                |
| [Source](https://www.postman.com/legal/eula/)                                        | &nbsp;                                                                                                                                                                |
| [Source](https://www.telerik.com/purchase/license-agreement/fiddler)                 | Unzip the `.exe`, open unzipped folder `$PLUGINSDIR`, and unzip again the `.exe`. Now you can run the `Fiddler.exe`. [Details](https://stackoverflow.com/a/21756167). |
| [Source](https://github.com/notepad-plus-plus/notepad-plus-plus/blob/v7.9.5/LICENSE) | &nbsp;                                                                                                                                                                |
| [Source](https://github.com/greenshot/greenshot/blob/release/1.3/LICENSE)            | &nbsp;                                                                                                                                                                |
| [Source](https://github.com/Maximus5/ConEmu/blob/v21.04.22/LICENSE)                  | &nbsp;                                                                                                                                                                |

<!-- TODO: add next line to last table cell -->
<!-- [Portable instructions](https://conemu.github.io/en/ConEmuXml.html#search-sequence), [7-Zip package](https://conemu.github.io/en/VersionComparison.html#7-zip-package), [FAQ](https://conemu.github.io/en/FAQ-3.html#q-3-1). Also included in Git Extensions. -->

<!--
Visual Studio Code: https://github.com/microsoft/vscode/blob/e713fe9b05fc24facbec8f34fb1017133858842b/LICENSE.txt, https://code.visualstudio.com/license.
IntelliJ: https://github.com/JetBrains/intellij-community/blob/0aec28c9b6fefa4cab5a0586b87de6d49b16f507/LICENSE.txt, https://www.jetbrains.com/opensource/idea/, https://www.jetbrains.com/idea/features/editions_comparison_matrix.html, https://intellij-support.jetbrains.com/hc/en-us/community/posts/115000698770/comments/115000584024.
Git Extensions: https://github.com/gitextensions/gitextensions/blob/0a5ef9ca6ce87754a510aa02c7a96d8b915714ac/LICENSE.md.
Postman: https://support.postman.com/hc/en-us/articles/360003675853-Commercial-Use-Restrictions.
Fiddler Classic: <not found>.
Notepad++: https://github.com/notepad-plus-plus/notepad-plus-plus/blob/4399c1343b96aee0c5419f130ddd984dc86f02d7/LICENSE.
Greenshot: https://github.com/greenshot/greenshot/blob/95c4ea5cbe03306dede1cce993d43187bb7e0e0a/LICENSE, https://getgreenshot.org/faq/do-i-have-to-pay-for-using-greenshot/.
ConEmu: https://github.com/Maximus5/ConEmu/blob/5d888d58e0201866b0121fbb266981b78f38a6c9/LICENSE.
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
TODO: configure Maven and JDK from %TOOLS%.

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
