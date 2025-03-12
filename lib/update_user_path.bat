@echo off
setlocal enabledelayedexpansion

set /p paths=Enter paths to add to the system PATH:
set /p envVars=Enter environment variable names and values (e.g., ""VAR1=value1;VAR2=value2""):

echo The following changes will be made:
echo Paths to add to the system PATH: !paths!
echo Environment variables and their values: !envVars!

set /p confirm=Confirm changes? (Y/N):
if /i ""!confirm!"" == ""Y"" (
    setx PATH ""%PATH%;!paths!""
    for %%v in (!envVars!) do setx %%v
) else (
    echo Changes not made.
)