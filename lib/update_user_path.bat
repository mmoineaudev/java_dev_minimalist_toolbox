@echo off
setlocal enabledelayedexpansion

set /p paths=Enter paths to add to the system PATH:
set /p envVars=Enter environment variable names and values (e.g., VAR1 value1):

echo The following changes will be made:
echo Paths to add to the system PATH: !paths!
echo Environment variables and their values: !envVars!

echo Current PATH: %PATH%
echo ========================

set oldPath=%PATH%
set newPath=!oldPath!;"!paths!"

echo ========================
echo Old PATH: !oldPath!
echo ========================
echo New PATH: !newPath!

set /p confirm=Confirm changes? (Y/N):
if /i ""!confirm!"" == ""Y"" (
    
    echo setting up the env var...
    setx !envVars!

    echo setting up the paths...
    setx PATH "!newPath!"

) else (
    echo Changes not made.
)
