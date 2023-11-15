@echo off
if exist "%userprofile%\AppData\Roaming\balls\key.txt" (
    echo File exists!
) else (
    echo File does not exist.
)

cls