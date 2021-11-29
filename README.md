# Launchers Windows Reset
Reset various launchers windows position and size with this simple script.

# How to use
Simply download the **ResetLaunchersWindows.bat** script file and double click on in to execute.

**NOTE:** Before first use it's recommended to edit some part of the script for specific launchers (e.g. Battle.net).

# Supported Launchers
Currently the script supports the following launchers:

- Battle.net*
- Discord
- EA Desktop*
- Epic Games Launcher
- Origin*
- Playnite
- Steam

*\* Some editing required to make it work.*

# How it works
This is a very simple script with two main steps:

1. Create a backup copy of the original config file
2. Edit the config file by removing specific lines used to store windows position and size

Each launcher uses different settings, finding the right ones and doing tests by removing them not always works. From my testing most of the launchers seems to work fine.

# Some editing required
Some launchers create different files based on the user profile or other parameters. To try to keep the script simple I didn't do any fancy coding to try find the right one so some editing it's required to make it work.

### Battle.net
By default you should find the config files in the <code>%APPDATA%\Battle.net</code> folder, they should have various alphanumeric characters and end with a <code>.config</code> extension. Edit the <code>battleNetConfigFile</code> variable inside the script with the correct file.

### EA Desktop App
By default you should find the config files in the <code>%LOCALAPPDATA%\Electronic Arts\EA Desktop</code> folder, they should start with <code>user_</code>, then have various alphanumeric characters and end with a <code>.ini</code> extension. Edit the <code>eaDesktopConfigFile</code> variable inside the script with the correct file.

### Origin
By default you should find the config files in the <code>%APPDATA%\Origin</code> folder, they should start with <code>local_</code>, then have various alphanumeric characters and end with a <code>.xml</code> extension. Edit the <code>originConfigFile</code> variable inside the script with the correct file.
