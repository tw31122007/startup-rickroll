@echo off
setlocal enabledelayedexpansion

rem Set the server address and endpoint
set "ServerAddress=127.0.0.1:5500"
set "Endpoint=/cac/receive_info.php"

rem Get the current computer name
set "ComputerName=%COMPUTERNAME%"

rem Send computer name to the server
powershell -command "(New-Object Net.WebClient).UploadString('http://%ServerAddress%%Endpoint%', 'POST', 'computerName=%ComputerName%')"
