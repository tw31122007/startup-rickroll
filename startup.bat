@echo off
set MP3File=%userprofile%\AppData\Roaming\a\balls\rickroll.mp3
start %userprofile%\AppData\Roaming\a\balls\vol-up.vbs

powershell -Command "Start-Process -FilePath 'C:\Program Files\Windows Media Player\wmplayer.exe' -ArgumentList '/play /close \"%MP3File%\"' -WindowStyle Hidden -Wait"