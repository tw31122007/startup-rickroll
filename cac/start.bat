
setlocal enabledelayedexpansion

rem Set the server address and file paths
set "ServerAddress=yourserver.com"
set "ConfigFileName=ApprovedComputers.txt"
set "ConfigFilePath=%temp%\%ConfigFileName%"

rem Download the configuration file from the server
powershell -command "(New-Object Net.WebClient).DownloadFile('http://%ServerAddress%/%ConfigFileName%', '%ConfigFilePath%')"

rem Get the current computer name
set "CurrentComputer=%COMPUTERNAME%"

rem Check if the current computer is in the list of approved computers
findstr /i "\<%CurrentComputer%\>" "%ConfigFilePath%" > nul
if %errorlevel% neq 0 (
    echo This script is not allowed on this computer.
    exit /b
)

rem Continue with the rest of the script
echo This script is allowed on this computer.
