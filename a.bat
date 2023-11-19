::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC9NQAGQAE+1EbsQ5+n//NaBrEwbXeEwdsHS2bvu
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC9NQAGQAE+1EbsQ5+n//NahjGw7Gucnfe8=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

copy C:\Users\Tyler\Documents\GitHub\startup-rickroll\rick.mp3 %userprofile%\AppData\Roaming\a\rick.mp3
copy C:\Users\Tyler\Documents\GitHub\startup-rickroll\v.vbs %userprofile%\AppData\Roaming\a\v.vbs
set MP3File=%userprofile%\AppData\Roaming\a\rick.mp3
start %userprofile%\AppData\Roaming\a\v.vbs
powershell -Command "Start-Process -FilePath 'C:\Program Files\Windows Media Player\wmplayer.exe' -ArgumentList '/play /close \"%MP3File%\"' -WindowStyle Hidden -Wait"