@ECHO OFF
REM Setting launchers config folders paths, these should be pretty standard as they are usually inside the AppData folder.
SET battleNetConfigFolder=%APPDATA%\Battle.net
SET discordConfigFolder=%APPDATA%\discord
SET eaDesktopConfigFolder=%LOCALAPPDATA%\Electronic Arts\EA Desktop
SET epicGamesConfigFolder=%LOCALAPPDATA%\EpicGamesLauncher\Saved\Config\Windows
SET originConfigFolder=%APPDATA%\Origin
SET playniteConfigFolder=%APPDATA%\Playnite
SET steamConfigFolder=%PROGRAMFILES(x86)%\Steam\config

REM Setting launchers config files names, these can vary based on the way launchers create different config files for profile (or other parameters).
SET battleNetConfigFile=xxxxx.config
SET discordConfigFile=settings.json
SET eaDesktopConfigFile=user_xxxxxxxxxxxxxxxxxxxxxxxxx.ini
SET epicGamesConfigFile=GameUserSettings.ini
SET originConfigFile=local_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.xml
SET playniteConfigFile=windowPositions.json
SET steamConfigFile=DialogConfig.vdf

REM Concat folders and files
SET battleNetConfig=%battleNetConfigFolder%\%battleNetConfigFile%
SET discordConfig=%discordConfigFolder%\%discordConfigFile%
SET eaDesktopConfig=%eaDesktopConfigFolder%\%eaDesktopConfigFile%
SET epicGamesConfig=%epicGamesConfigFolder%\%epicGamesConfigFile%
SET originConfig=%originConfigFolder%\%originConfigFile%
SET playniteConfig=%playniteConfigFolder%\%playniteConfigFile%
SET steamConfig=%steamConfigFolder%\%steamConfigFile%

REM Setting strings to look for and delete. NOTE: you want these to be as unique as possible or you'll end up resetting more than necessary!
SET battleNetStrings=WindowPosition WindowSize
SET discordStrings=\"x\": \"y\": \"width\": \"height\":
SET eaDesktopStrings=user.window
SET epicGamesStrings=MainLauncherWindow
SET originStrings=AppSizePosition
SET playniteStrings=\"X\": \"Y\":
SET steamStrings=xpos ypos wide tall

ECHO  ### ### ### ### ###
ECHO # Starting reset... #
ECHO  ### ### ### ### ###

REM Checking if configs exist and sart reset process. The way it works it should first create a backup of the 'original' file and then start deleting lines containing the specified strings (from previous step).
ECHO Battle.net config file path: "%battleNetConfig%"
IF EXIST "%battleNetConfig%" (
	ECHO - Battle.net config file found.
	MOVE /Y "%battleNetConfig%" "%battleNetConfig%.backup" & findstr /V "%battleNetStrings%" "%battleNetConfig%.backup" > "%battleNetConfig%"
	ECHO - Battle.net config file reset.
) ELSE (
	ECHO - Battle.net config file NOT found!!!
)

ECHO ---
ECHO Discord config file path: "%discordConfig%"
IF EXIST "%discordConfig%" (
	ECHO - Discord config file found.
	MOVE /Y "%discordConfig%" "%discordConfig%.backup" & findstr /V "%discordStrings%" "%discordConfig%.backup" > "%discordConfig%"
	ECHO - Discord config file reset.
) ELSE (
	ECHO - Discord config file NOT found!!!
)

ECHO ---
ECHO EA Desktop config file path: "%eaDesktopConfig%"
IF EXIST "%eaDesktopConfig%" (
	ECHO - EA Desktop config file found.
	MOVE /Y "%eaDesktopConfig%" "%eaDesktopConfig%.backup" & findstr /V "%eaDesktopStrings%" "%eaDesktopConfig%.backup" > "%eaDesktopConfig%"
	ECHO - EA Desktop config file reset.
) ELSE (
	ECHO - EA Desktop config file NOT found!!!
)

ECHO ---
ECHO Epic Games Launcher config file path: "%epicGamesConfig%"
IF EXIST "%epicGamesConfig%" (
	ECHO - Epic Games Launcher config file found.
	MOVE /Y "%epicGamesConfig%" "%epicGamesConfig%.backup" & findstr /V "%epicGamesStrings%" "%epicGamesConfig%.backup" > "%epicGamesConfig%"
	ECHO - Epic Games Launcher config file reset.
) ELSE (
	ECHO - Epic Games Launcher config file NOT found!!!
)

ECHO ---
ECHO Origin config file path: "%originConfig%"
IF EXIST "%originConfig%" (
	ECHO - Origin config file found.
	MOVE /Y "%originConfig%" "%originConfig%.backup" & findstr /V "%originStrings%" "%originConfig%.backup" > "%originConfig%"
	ECHO - Origin config file reset.
) ELSE (
	ECHO - Origin config file NOT found!!!
)

ECHO ---
ECHO Playnite config file path: "%playniteConfig%"
IF EXIST "%playniteConfig%" (
	ECHO - Playnite config file found.
	MOVE /Y "%playniteConfig%" "%playniteConfig%.backup" & findstr /V "%playniteStrings%" "%playniteConfig%.backup" > "%playniteConfig%"
	ECHO - Playnite config file reset.
) ELSE (
	ECHO - Playnite config file NOT found!!!
)

ECHO ---
ECHO Steam config file path: "%steamConfig%"
IF EXIST "%steamConfig%" (
	ECHO - Steam config file found.
	MOVE /Y "%steamConfig%" "%steamConfig%.backup" & findstr /V "%steamStrings%" "%steamConfig%.backup" > "%steamConfig%"
	ECHO - Steam config file reset.
) ELSE (
	ECHO - Steam config file NOT found!!!
)

ECHO ### ### ### ###
ECHO # Reset done! #
ECHO ### ### ### ###

PAUSE
