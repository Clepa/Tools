<!-- markdownlint-disable MD033 markdownlint-disable MD041-->
<link rel="stylesheet" type="text/css" media="all" href="styles.css" />
<!-- markdownlint-enable MD033 markdownlint-enable MD041 -->

# Local environment <!-- omit in toc -->

Guide to add the following applications without admin rights. One of the objectives of this guide is to put all the applications and its configurations into the same common folder to facilitate to do manual backups or move between computers.

## Contents <!-- omit in toc -->

- [Manual configuration](#manual-configuration)
  - [Download](#download)
    - [Tools](#tools)
    - [Applications](#applications)
  - [Setup](#setup)
    - [Install](#install)
  - [Environment variables](#environment-variables)
  - [Configuration](#configuration)
    - [Git](#git)
    - [Apache Maven](#apache-maven)
    - [Node.js](#nodejs)
      - [NPM](#npm)
      - [Yarn](#yarn)
    - [IntelliJ Community](#intellij-community)
    - [ConEmu](#conemu)
- [Easy go](#easy-go)
- [WIP](#wip)
  - [Tools and applications](#tools-and-applications)

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

## Manual configuration

Go to [Easy go](#easy-go) if you want a quick and semiautomatic configuration (recommended).

### Download

Download these tools and applications.

#### Tools

| Tool         | Version                                                                                                                                                | Download                                         | License                                                            |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------------------------ |
| Git          | [2.31.1](https://github.com/git-for-windows/git/releases/download/v2.31.1.windows.1/PortableGit-2.31.1-64-bit.7z.exe)                                  | [Source](https://git-scm.com/download/win)       | [Source](https://github.com/git/git/blob/v2.31.1/COPYING)          |
| Java         | [jdk-11.0.11+9](https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jdk_x64_windows_hotspot_11.0.11_9.zip) | [Source](https://adoptopenjdk.net/releases.html) | [Source](https://adoptopenjdk.net/about.html)                      |
| Apache Maven | [3.8.1](https://ftp.cixug.es/apache/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.zip)                                                           | [Source](https://maven.apache.org/download.cgi)  | [Source](https://github.com/apache/maven/blob/maven-3.8.1/LICENSE) |
| Node.js      | [14.17.0](https://nodejs.org/dist/v14.17.0/node-v14.17.0-win-x64.zip)                                                                                  | [Source](https://nodejs.org/en/download/)        | [Source](https://github.com/nodejs/node/blob/v14.17.0/LICENSE)     |

<!--
Git: https://github.com/git/git/blob/48bf2fa8bad054d66bd79c6ba903c89c704201f7/COPYING.
Java: <not found>.
Apache Maven: https://github.com/apache/maven/blob/05c21c65bdfed0f71a2f2ada8b84da59348c4c5d/LICENSE.
Node.js: https://github.com/nodejs/node/blob/aa15690b6446c56f36292d38ef064c095a374ba7/LICENSE.
-->

#### Applications

| Application        | Version                                                                                                                                     | Download                                                                    | License                                                                              |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| Visual Studio Code | [1.56.1](https://az764295.vo.msecnd.net/stable/e713fe9b05fc24facbec8f34fb1017133858842b/VSCode-win32-x64-1.56.1.zip)                        | [Source](https://code.visualstudio.com/Download)                            | [Source](https://github.com/microsoft/vscode/blob/1.56.1/LICENSE.txt)                |
| IntelliJ Community | [2021.1.1](https://download.jetbrains.com/idea/ideaIC-2021.1.1.win.zip)                                                                     | [Source](https://www.jetbrains.com/idea/download/#section=windows)          | [Source](https://github.com/JetBrains/intellij-community/blob/211.7142/LICENSE.txt)  |
| Git Extensions     | [3.5](https://github.com/gitextensions/gitextensions/releases/download/v3.5/GitExtensions-Portable-3.5.0.11713-0a5ef9ca6.zip)               | [Source](https://github.com/gitextensions/gitextensions/releases)           | [Source](https://github.com/gitextensions/gitextensions/blob/v3.4.3/LICENSE.md)      |
| Postman            | [8.4.0](https://dl.pstmn.io/download/version/8.4.0/win64)                                                                                   | [Source](https://www.postman.com/downloads/)                                | [Source](https://www.postman.com/legal/eula/)                                        |
| Fiddler Classic    | `5.0.20204.45441`. [Latest](https://telerik-fiddler.s3.amazonaws.com/fiddler/FiddlerSetup.exe)                                              | [Source](https://www.telerik.com/support/whats-new/fiddler/release-history) | [Source](https://www.telerik.com/purchase/license-agreement/fiddler)                 |
| Notepad++          | [7.9.5](https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9.5/npp.7.9.5.portable.x64.zip)                         | [Source](https://github.com/notepad-plus-plus/notepad-plus-plus/releases)   | [Source](https://github.com/notepad-plus-plus/notepad-plus-plus/blob/v7.9.5/LICENSE) |
| Greenshot          | [1.2.10.6](https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.10.6/Greenshot-NO-INSTALLER-1.2.10.6-RELEASE.zip) | [Source](https://github.com/greenshot/greenshot/releases)                   | [Source](https://github.com/greenshot/greenshot/blob/release/1.3/LICENSE)            |
| ConEmu             | [21.04.22](https://github.com/Maximus5/ConEmu/releases/download/v21.04.22/ConEmuPack.210422.7z)                                             | [Source](https://github.com/Maximus5/ConEmu/releases)                       | [Source](https://github.com/Maximus5/ConEmu/blob/v21.04.22/LICENSE)                  |

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

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

### Setup

First steps:

- Create a new folder at `C:\`, e.g. `C:\Tools`, where to install all the applications and tools. This root folder can be different, and from now on known as: `%TOOLS%`. This value will be defined as an environment variable ([environment variables](#environment-variables)), but be careful if you change the value because some applications do not support environment variables in paths, and you have to adapt it.
- Inside this new folder, create two empty folders: `%TOOLS%\_config` and `%TOOLS%\_data`.
- Create the next base structure:

<!-- markdownlint-disable MD033 -->
<table style="margin-left: auto; margin-right: auto;">
  <tr>
    <th colspan="2">Base structure</th>
  </tr>
  <tr style="vertical-align: top;">
    <td>
      <pre style="padding: 10px; margin: 0">
📦Tools
  ┣ 📂_config
  ┣ 📂_data
  ┣ 📂ApacheMaven
  ┃ ┗ 📂Current
  ┣ 📂ConEmu
  ┃ ┗ 📂Current
  ┣ 📂Fiddler
  ┃ ┗ 📂Current
  ┣ 📂Git
  ┃ ┗ 📂Current
  ┣ 📂GitExtensions
  ┃ ┗ 📂Current
  ┣ 📂Greenshot
  ┃ ┗ 📂Current
      </pre>
    </td>
    <td>
      <pre style="padding: 10px; margin: 0">
📦Tools
  ┣ 📂Java
  ┃ ┗ 📂OpenJDK
  ┃ ┃ ┗ 📂Current
  ┣ 📂JetBrains
  ┃ ┗ 📂IntelliJ
  ┃ ┃ ┗ 📂Current
  ┣ 📂Node.js
  ┃ ┗ 📂Current
  ┣ 📂Notepad++
  ┃ ┗ 📂Current
  ┣ 📂Postman
  ┃ ┗ 📂Current
  ┗ 📂VSCode
  ┃ ┗ 📂Current
      </pre>
    </td>
  </tr>
</table>
<!-- markdownlint-enable MD033 -->

#### Install

<!-- TODO: for Fiddler, move INetC.dll file too? -->

To finish the installation process, we should move the applications to the target folder. As a summary, the `.zip` and `.7z` files should be unzipped (without the root folder) in the target application `Current` folder. The `.exe` files have a specific configuration. A short description of the process for each:

- Git (`PortableGit-2.31.1-64-bit.7z.exe`): unzip the `.exe` in `%TOOLS%\Git\Current` and run `post-install.bat`, or just run the `.exe` and move the extracted content to `%TOOLS%\Git\Current`.
- Java (`OpenJDK11U-jdk_x64_windows_hotspot_11.0.11_9.zip`): unzip in `%TOOLS%\Java\OpenJDK\Current`.
- Apache Maven (`apache-maven-3.8.1-bin.zip`): unzip in `%TOOLS%\ApacheMaven\Current`.
- Node.js (`node-v14.17.0-win-x64.zip`): unzip in `%TOOLS%\Node.js\Current`.
- Visual Studio Code (`VSCode-win32-x64-1.56.1.zip`): unzip in `%TOOLS%\VSCode\Current` and create `data` folder within Visual Studio Code folder. [Portable mode](https://code.visualstudio.com/docs/editor/portable).
- IntelliJ Community (`ideaIC-2021.1.1.win.zip`): unzip in `%TOOLS%\JetBrains\IntelliJ\Current`.
  - Open `C:\Tools\JetBrains\IntelliJ\Current\bin\idea.properties` file, uncomment and change next properties:
    <!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->
    <!--  -->
    ```properties
    idea.config.path=${idea.home.path}/data/config
    idea.system.path=${idea.home.path}/data/system
    idea.plugins.path=${idea.config.path}/plugins
    idea.log.path=${idea.system.path}/log
    ```
    <!--  -->
- Git Extensions (`GitExtensions-Portable-3.5.0.11713-0a5ef9ca6.zip`): unzip in `%TOOLS%\GitExtensions\Current`.
- Postman (`Postman-win64-8.4.0-Setup.exe`): run the `.exe` and when the installation process finishes, move the content in `%LOCALAPPDATA%\Postman\app-8.4.0` to `%TOOLS%\Postman\Current`.
- Fiddler Classic (`FiddlerSetup.exe`): unzip the `.exe`, open unzipped folder `$PLUGINSDIR`, and unzip again the `.exe` in `%TOOLS%\Fiddler\Current`. [Details](https://stackoverflow.com/a/21756167).
- Notepad++ (`npp.7.9.5.portable.x64.zip`): unzip in `%TOOLS%\Notepad++\Current`.
- Greenshot (`Greenshot-NO-INSTALLER-1.2.10.6-RELEASE.zip`): unzip in `%TOOLS%\Greenshot\Current`.
- ConEmu (`ConEmuPack.210422.7z`): unzip in `%TOOLS%\ConEmu\Current`. Also included in Git Extensions. [Portable instructions](https://conemu.github.io/en/ConEmuXml.html#search-sequence), [7-Zip package](https://conemu.github.io/en/VersionComparison.html#7-zip-package) and [FAQ](https://conemu.github.io/en/FAQ-3.html#q-3-1).

<!-- markdownlint-disable MD033 -->
<table style="margin-left: auto; margin-right: auto;">
  <tr>
    <th colspan="2">Result structure (cut to only show two folders or files)</th>
  </tr>
  <tr style="vertical-align: top;">
    <td>
      <pre style="padding: 10px; margin: 0">
📦Tools
 ┣ 📂_config
 ┣ 📂_data
 ┣ 📂ApacheMaven
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂bin
 ┃ ┃ ┗ 📂boot
 ┣ 📂ConEmu
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂ConEmu
 ┃ ┃ ┗ 📂plugins
 ┣ 📂Fiddler
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂$PLUGINSDIR
 ┃ ┃ ┗ 📂ImportExport
 ┣ 📂Git
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂bin
 ┃ ┃ ┗ 📂cmd
 ┣ 📂GitExtensions
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂ConEmu
 ┃ ┃ ┗ 📂cs
 ┣ 📂Greenshot
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂Languages
 ┃ ┃ ┗ 📂Plugins
      </pre>
    </td>
    <td>
      <pre style="padding: 10px; margin: 0">
📦Tools
 ┣ 📂Java
 ┃ ┗ 📂OpenJDK
 ┃ ┃ ┗ 📂Current
 ┃ ┃ ┃ ┣ 📂bin
 ┃ ┃ ┃ ┗ 📂conf
 ┣ 📂JetBrains
 ┃ ┗ 📂IntelliJ
 ┃ ┃ ┗ 📂Current
 ┃ ┃ ┃ ┣ 📂bin
 ┃ ┃ ┃ ┗ 📂jbr
 ┣ 📂Node.js
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂node_modules
 ┃ ┃ ┗ 📜CHANGELOG.md
 ┣ 📂Notepad++
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂autoCompletion
 ┃ ┃ ┗ 📂functionList
 ┣ 📂Postman
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂locales
 ┃ ┃ ┗ 📂resources
 ┗ 📂VSCode
 ┃ ┗ 📂Current
 ┃ ┃ ┣ 📂bin
 ┃ ┃ ┗ 📂data
      </pre>
    </td>
  </tr>
</table>
<!-- markdownlint-enable MD033 -->

:information_source: It is important to verify the structure to do not have problems with extra folder when unzipping. :information_source:

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

### Environment variables

Environment variables needed for applications to: properly work, can be used in command line, be discoverable by others applications.

- Open environment variables: `Win` + `R` > `cmd` > `rundll32.exe sysdm.cpl,EditEnvironmentVariables`.
- Configure environment variables:
  - Add new user variables (or update):
    - Variable name: `TOOLS`, variable value: `C:\Tools`.
    - Variable name: `JAVA_HOME`, variable value: `%TOOLS%\Java\OpenJDK\Current`.
    - Variable name: `NPM_CONFIG_USERCONFIG`, variable value: `%TOOLS%\_config\.npmrc`.
  - `PATH` variable:
    - Double-click on `PATH` (or create if it does not exist).
    - In the new window click on `Edit text...`.
    - Add at the end: `;%TOOLS%\ApacheMaven\Current\bin;%TOOLS%\Git\Current\cmd;%TOOLS%\Git\Current\bin;%TOOLS%\Java\OpenJDK\Current\bin;%TOOLS%\Node.js\Current;%TOOLS%\VSCode\Current\bin;%TOOLS%\_data\npm;%TOOLS%\_data\Yarn\bin;`.

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

### Configuration

#### Git

- Create a new file or open it if it exists: `%USERPROFILE%\.gitconfig`.
- Recommended configuration. Update with your own information for, at least, `user.name` and `user.email`.

```ini
[credential]
  helper = manager
[http]
  sslVerify = false
[user]
  name = Example
  email = example@example.com
[core]
  editor = \"C:/Tools/GitExtensions/Current/GitExtensions.exe\" fileeditor
[diff]
  guitool = vscode
[difftool "vscode"]
  path = C:/Tools/VSCode/Current/Code.exe
  cmd = \"C:/Tools/VSCode/Current/Code.exe\" --wait --diff \"$LOCAL\" \"$REMOTE\"
[merge]
  tool = vscode
  guitool = vscode
[mergetool "vscode"]
  path = C:/Tools/VSCode/Current/Code.exe
  cmd = \"C:/Tools/VSCode/Current/Code.exe\" --wait \"$MERGED\"
[pull]
  rebase = false
[fetch]
  prune = false
[rebase]
  autoStash = false
```

:warning: If you changed the `%TOOLS%` folder to a different one, update the paths too. :warning:

#### Apache Maven

In case that you have an existing user settings file, `%USERPROFILE%\.m2\settings.xml`, move to `%TOOLS%\ApacheMaven\Current\conf\settings.xml` and add the `localRepository`:

```xml
<settings>
  <localRepository>${env.TOOLS}\_data\Maven\repository</localRepository>
  <!-- Existing configuration... -->
</settings>
```

#### Node.js

##### NPM

- Create a new file: `%TOOLS%\_config\.npmrc`, or move from `%USERPROFILE%\.npmrc` if it exists.
- Add next properties:
  <!--  -->
  ```properties
  prefix=${TOOLS}\_data\npm
  cache=${TOOLS}\_data\npm\cache
  tmp=${TOOLS}\_data\npm\tmp
  ```

Install recommended packages:

- Install Angular: `npm i -g @angular/cli`.
- Install Yarn: `npm i -g yarn`.

##### Yarn

- Create a new file or open it if it exists: `%USERPROFILE%\.yarnrc`.
- Add next properties:
  <!--  -->
  ```properties
  prefix="C:\\Tools\\_data\\Yarn"
  global-folder="C:\\Tools\\_data\\Yarn\\global"
  cache-folder="C:\\Tools\\_data\\Yarn\\cache"
  "--link-folder"="C:\\Tools\\_data\\Yarn\\link"
  ```

:warning: If you changed the `%TOOLS%` folder to a different one, update the paths too. :warning:

#### IntelliJ Community

Open IntelliJ and apply basic configuration opening `Customize` > `All settings...`:

- Go to `File | Settings | Build, Execution, Deployment | Build Tools | Maven | Importing`: at _JDK for importer_ select `Use JAVA_HOME`.
- Go to `File | Settings | Build, Execution, Deployment | Build Tools | Maven` and update:
  - _Maven home path_: `C:\Tools\ApacheMaven\Current`.
  - Verify that the _Local repository_ shows `C:\Tools\_data\Maven\repository`.

:warning: If you changed the `%TOOLS%` folder to a different one, update the path. :warning:

#### ConEmu

When opening for the first time, select the ConEmu folder to save settings: `%TOOLS%\ConEmu\Current\ConEmu.xml`.

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

## Easy go

In the `.\Tools` folder (documentation root), all the applications are nearly fully configured with this setup and only needs some minor actions.

:warning: Before running the script(s) read carefully next comments: :warning:

- Run this at your own risk.
- If some environment variables are already present in `PATH`, these will be duplicated and other variables with the same name will be overwritten.
- Verify the configuration at the end. Use log files to restore previous values if something is wrong.

Actions:

- Copy the content in `.\Tools` to `C:\Tools`.
- Run the script to create all the needed environment variables: `call .\Scripts\create_env_vars.cmd`.
- Apply the steps defined in: [Git](#git) and [Yarn](#yarn).
- Install the recommended packages defined in [NPM](#npm).
- In case that you have some existing configuration files, remove them, or move the content and then remove: `%USERPROFILE%\.m2\settings.xml` and `%USERPROFILE%\.npmrc`.

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

## WIP

- Add token to work with GitHub.
- User documents in network folder.
- Explain why `Current` structure and empty folder with version number.
- Clean up the system: old configuration and programs.
- Script to automatically download the _latest_ version of all the programs.
- Backup of the `C:\Tools` folder.
  - Create .zip with all: applications, `_data` (optional) and `_config`.
  - Copy Chrome bookmarks.

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

<!--
### What about...?

#### Chrome

You can manually copy the bookmarks when doing the backup or move the user data to `%TOOLS%\_data` folder setting different user data directory creating a new shortcut:

- Create a new `chrome.exe` shortcut on your desktop (`%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe`).
  - Right click and go to properties.
  - Change the target to: `"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --user-data-dir="C:\tools\_data\Chrome"`.
- Open Chrome using the new shortcut:
  - Check if the bookmarks and passwords have been added correctly.
  - If something is missing, do it manually. Export from the old Chrome and import them into the new one. In some cases, to activate the import option for passwords, add to the shortcut target: `--enable-features=PasswordImport`.
- Hereinafter, use the new shortcut for using Chrome.
-->
