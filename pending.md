# TODO

## Windows Terminal

[New terminal tool for Windows](https://github.com/microsoft/terminal).

### Configure

- [Adding profiles for third-party tools](https://github.com/microsoft/terminal/blob/9dc38ad0f51ed72b0d0eb21de618ecbe65f04246/doc/user-docs/ThirdPartyToolProfiles.md#adding-profiles-for-third-party-tools).

  - Add a new profile and desired configuration options:

    - Generate GUID for new profile: Windows PowerShell > `"""{" + [guid]::NewGuid() + "}"""`:

      ```json
      {
        "tabWidthMode": "titleLength",
        "profiles": {
          "list": [
            {
              "guid": "{2030f2f8-3bc1-4a1f-a839-1b289acdab3d}",
              "name": "Git Bash",
              "commandline": "C:\\Program Files\\Git\\bin\\bash.exe -li",
              "startingDirectory": "%USERPROFILE%",
              "icon": "C:\\Program Files\\Git\\mingw64\\share\\git\\git-for-windows.ico"
            }
          ]
        }
      }
      ```

  - Activate Linux subsystem: `C:\Windows\System32\OptionalFeatures.exe > Windows Subsystems for Linux`. With this we could add Ubuntu as command line.
  - [Creating a new pane](https://docs.microsoft.com/en-us/windows/terminal/panes#creating-a-new-pane). New pane position depends on the focused one.
    - Splitting horizontally: `Alt`+`Shift`+`D`.
    - Splitting vertically: `Alt`+`Shift`+`-`.
