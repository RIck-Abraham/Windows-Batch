@echo off 
ECHO Restarting OneDrive. Please standby...
REM RESTART ONEDRIVE
IF EXIST "%localappdata%\Microsoft\OneDrive\onedrive.exe" (
    %localappdata%\Microsoft\OneDrive\onedrive.exe
	ECHO Done.
) ELSE IF EXIST "C:\Program Files\Microsoft OneDrive\onedrive.exe" (
    "C:\Program Files\Microsoft OneDrive\onedrive.exe"
	ECHO Done.
) ELSE (
    "C:\Program Files (x86)\Microsoft OneDrive\onedrive.exe"
	ECHO Done.
)

TASKKILL /im cmd.exe