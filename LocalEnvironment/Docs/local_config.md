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
    - [IntelliJ Ultimate](#intellij-ultimate)
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

| Tool         | Version                                                                                                                                            | Download                                                   | License                                                            |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------|--------------------------------------------------------------------|
| Git          | [2.47.1](https://github.com/git-for-windows/git/releases/download/v2.47.1.windows.1/PortableGit-2.47.1-64-bit.7z.exe)                              | [Source](https://git-scm.com/download/win)                 | [Source](https://github.com/git/git/blob/v2.47.1/COPYING)          |
| Java         | [jdk-23.0.1+11](https://github.com/adoptium/temurin23-binaries/releases/download/jdk-23.0.1%2B11/OpenJDK23U-jdk_x64_windows_hotspot_23.0.1_11.zip) | [Source](https://adoptium.net/temurin/releases/)           | [Source](https://adoptium.net/about/)                              |
| Apache Maven | [3.9.9](https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.zip)                                                          | [Source](https://maven.apache.org/download.cgi)            | [Source](https://github.com/apache/maven/blob/maven-3.9.9/LICENSE) |
| Node.js      | [23.4.0](https://nodejs.org/dist/v23.4.0/node-v23.4.0-win-x64.zip)                                                                                 | [Source](https://nodejs.org/en/download/prebuilt-binaries) | [Source](https://github.com/nodejs/node/blob/v23.4.0/LICENSE)      |

<!--
Git: https://github.com/git/git/blob/92999a42db1c5f43f330e4f2bca4026b5b81576f/COPYING.
Java: <not found>.
Apache Maven: https://github.com/apache/maven/blob/8e8579a9e76f7d015ee5ec7bfcdc97d260186937/LICENSE.
Node.js: https://github.com/nodejs/node/blob/e8cf3a6a972fb074411c6ce504e2d43a74ac2dff/LICENSE.
-->

#### Applications

| Application        | Version                                                                                                                                           | Download                                                                    | License                                                                              |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| Visual Studio Code | [1.96.0](https://vscode.download.prss.microsoft.com/dbazure/download/stable/138f619c86f1199955d53b4166bef66ef252935c/VSCode-win32-x64-1.96.0.zip) | [Source](https://code.visualstudio.com/Download)                            | [Source](https://github.com/microsoft/vscode/blob/1.96.0/LICENSE.txt)                |
| IntelliJ Ultimate  | [2024.3.1](https://download.jetbrains.com/idea/ideaIU-2024.3.1.win.zip)                                                                           | [Source](https://www.jetbrains.com/idea/download/?section=windows)          | [Source](https://www.jetbrains.com/store/comparison.html#LicenseComparison)          |
| Git Extensions     | [5.1.1](https://github.com/gitextensions/gitextensions/releases/download/v5.1.1/GitExtensions-Portable-x64-5.1.1.17970-939c0edba.zip)             | [Source](https://github.com/gitextensions/gitextensions/releases)           | [Source](https://github.com/gitextensions/gitextensions/blob/v5.1.1/LICENSE.md)      |
| Postman            | [8.4.0](https://dl.pstmn.io/download/version/8.4.0/win64)                                                                                         | [Source](https://www.postman.com/downloads/)                                | [Source](https://www.postman.com/legal/eula/)                                        |
| Fiddler Classic    | `5.0.20245.10105`. [Latest](https://telerik-fiddler.s3.amazonaws.com/fiddler/FiddlerSetup.exe)                                                    | [Source](https://www.telerik.com/support/whats-new/fiddler/release-history) | [Source](https://www.telerik.com/purchase/license-agreement/fiddler)                 |
| Notepad++          | [8.7.4](https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.7.4/npp.8.7.4.portable.x64.zip)                               | [Source](https://github.com/notepad-plus-plus/notepad-plus-plus/releases)   | [Source](https://github.com/notepad-plus-plus/notepad-plus-plus/blob/v8.7.4/LICENSE) |
| Greenshot          | [1.2.10.6](https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.10.6/Greenshot-NO-INSTALLER-1.2.10.6-RELEASE.zip)       | [Source](https://github.com/greenshot/greenshot/releases)                   | [Source](https://github.com/greenshot/greenshot/blob/release/1.3/LICENSE)            |
| ConEmu             | [23.07.24](https://github.com/Maximus5/ConEmu/releases/download/v23.07.24/ConEmuPack.230724.7z)                                                   | [Source](https://github.com/Maximus5/ConEmu/releases)                       | [Source](https://github.com/Maximus5/ConEmu/blob/v23.07.24/LICENSE)                  |

<!--
Visual Studio Code: https://github.com/microsoft/vscode/blob/138f619c86f1199955d53b4166bef66ef252935c/LICENSE.txt, https://code.visualstudio.com/license.
IntelliJ: https://www.jetbrains.com/store/comparison.html#LicenseComparison, https://www.jetbrains.com/opensource/idea/, https://www.jetbrains.com/products/compare/?product=idea&product=idea-ce, https://intellij-support.jetbrains.com/hc/en-us/community/posts/115000698770-Commercial-use-IntelliJ-IDEA-Community-Edition.
Git Extensions: https://github.com/gitextensions/gitextensions/blob/939c0edba68f0c15b8e5180ca06a92c5ce534501/LICENSE.md.
Postman: https://support.postman.com/hc/en-us/articles/360003675853-Commercial-Use-Restrictions.
Fiddler Classic: <not found>.
Notepad++: https://github.com/notepad-plus-plus/notepad-plus-plus/blob/b3110cdccfc3450eaab9d7cc554067384b3a2cfc/LICENSE.
Greenshot: https://github.com/greenshot/greenshot/blob/95c4ea5cbe03306dede1cce993d43187bb7e0e0a/LICENSE, https://getgreenshot.org/faq/do-i-have-to-pay-for-using-greenshot/.
ConEmu: https://github.com/Maximus5/ConEmu/blob/90f76807d5e1862f670a65273f8d5ffc6693b4d3/LICENSE.
-->

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

### Setup

First steps:

- Create a new folder at `C:\`, e.g. `C:\Tools`, where to install all the applications and tools. This root folder can be different, and from now on known as: `%TOOLS%`. This value will be defined as an environment variable ([environment variables](#environment-variables)), but be careful if you change the value to something else because some applications do not support environment variables in paths, and you have to adapt it.
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

- Git: unzip the `.exe` in `%TOOLS%\Git\Current` and run `post-install.bat`, or just run the `.exe` and move the extracted content to `%TOOLS%\Git\Current`.
- Java OpenJDK: unzip in `%TOOLS%\Java\OpenJDK\Current`.
- Apache Maven: unzip in `%TOOLS%\ApacheMaven\Current`.
- Node.js: unzip in `%TOOLS%\Node.js\Current`.
- Visual Studio Code: unzip in `%TOOLS%\VSCode\Current` and create `data` folder within Visual Studio Code folder. [Portable mode](https://code.visualstudio.com/docs/editor/portable).

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

- IntelliJ Ultimate: unzip in `%TOOLS%\JetBrains\IntelliJ\Current`.
  - Open `%TOOLS%\JetBrains\IntelliJ\Current\bin\idea.properties` file, uncomment and change next properties:
    <!--  -->
    ```properties
    idea.config.path=${idea.home.path}/data/config
    idea.system.path=${idea.home.path}/data/system
    idea.plugins.path=${idea.config.path}/plugins
    idea.log.path=${idea.system.path}/log
    ```
    <!--  -->
- Git Extensions: unzip in `%TOOLS%\GitExtensions\Current`.
- Postman: run the `.exe` and when the installation process finishes, move the content in `%LOCALAPPDATA%\Postman\<version>` to `%TOOLS%\Postman\Current`.
- Fiddler Classic (`FiddlerSetup.exe`): unzip the `.exe`, open unzipped folder `$PLUGINSDIR`, and unzip again the `.exe` in `%TOOLS%\Fiddler\Current`. [Details](https://stackoverflow.com/a/21756167).
- Notepad++: unzip in `%TOOLS%\Notepad++\Current`.
- Greenshot: unzip in `%TOOLS%\Greenshot\Current`.
- ConEmu: unzip in `%TOOLS%\ConEmu\Current`. [Portable instructions](https://conemu.github.io/en/ConEmuXml.html#search-sequence), [7-Zip package](https://conemu.github.io/en/VersionComparison.html#7-zip-package) and [FAQ](https://conemu.github.io/en/FAQ-3.html#q-3-1).

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

:information_source: It is important to verify the structure to do not have problems with extra folder when unzipping. :information_source:

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

### Environment variables

Environment variables needed for applications to: properly work, can be used in command line, be discoverable by other applications.

- Open environment variables: `Win` + `R` > `cmd` > `rundll32.exe sysdm.cpl,EditEnvironmentVariables`.
- Configure environment variables:
  - Add new user variables (or update):
    - Variable name: `TOOLS`, variable value: `C:\Tools`.
    - Variable name: `JAVA_HOME`, variable value: `%TOOLS%\Java\OpenJDK\Current`.
    - Variable name: `NPM_CONFIG_USERCONFIG`, variable value: `%TOOLS%\_config\.npmrc`.
  - `PATH` variable:
    - Double-click on `PATH` (or create if it does not exist).
    - In the new window click on `Edit text...`.
    - Add at the end: `%TOOLS%\_data\Yarn\bin;%TOOLS%\_data\npm;%TOOLS%\ApacheMaven\Current\bin;%TOOLS%\Git\Current\bin;%TOOLS%\Git\Current\cmd;%TOOLS%\Java\OpenJDK\Current\bin;%TOOLS%\Node.js\Current;%TOOLS%\Android\AndroidStudio\Current\bin;%TOOLS%\JetBrains\IntelliJ\Current\bin;%TOOLS%\JetBrains\PyCharm\Current\bin;%TOOLS%\JetBrains\WebStorm\Current\bin;%TOOLS%\JetBrains\Writerside\Current\bin;%TOOLS%\VSCode\Current\bin;%TOOLS%\LaTeX\MiKTeX\Current\texmfs\install\miktex\bin\x64;`.

<!-- markdownlint-disable MD033 --><div style="page-break-after: always;"></div><!-- markdownlint-enable MD033 -->

### Configuration

#### Git

- Create a new file or open it if it exists: `%USERPROFILE%\.gitconfig`.
- Recommended configuration. Update with your own information for, at least, `user.name` and `user.email`.

```ini
[credential "helperselector"]
  selected = manager
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
<!-- -->
<settings>
  <localRepository>${env.TOOLS}\_data\Maven\repository</localRepository>
  <!-- Existing configuration... -->
</settings>
```

#### Node.js

##### NPM

- Create a new file: `%TOOLS%\_config\.npmrc`, or move from `%USERPROFILE%\.npmrc` if it exists.
- Add next properties:
  ```properties
  prefix=${TOOLS}\_data\npm
  cache=${TOOLS}\_data\npm\cache
  tmp=${TOOLS}\_data\npm\tmp
  ```

Install recommended packages:

- Angular: `npm i -g @angular/cli`.
- Yarn: `npm i -g yarn`.

##### Yarn

- Create a new file or open it if it exists: `%USERPROFILE%\.yarnrc`.
- Add next properties:
  ```properties
  prefix="C:\\Tools\\_data\\Yarn"
  global-folder="C:\\Tools\\_data\\Yarn\\global"
  cache-folder="C:\\Tools\\_data\\Yarn\\cache"
  "--link-folder"="C:\\Tools\\_data\\Yarn\\link"
  ```

:warning: If you changed the `%TOOLS%` folder to a different one, update the paths too. :warning:

#### IntelliJ Ultimate

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

:warning: Before running the script(s) read carefully next comments: :warning:

- Run this at your own risk.
- If some environment variables are already present in `PATH`, these will be duplicated and other variables with the same name will be overwritten.
- Verify the configuration at the end. Use log files to restore previous values if something is wrong.

Actions:

- Run the script to create all the necessary environment variables: `call .\LocalEnvironment\Scripts\create_env_vars.cmd`.
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
