@echo off
setlocal EnableDelayedExpansion
title Epoch

rem this is just width and height of the window, no need to add it yours
mode 40, 10

rem we simply pass the powershell output to our batch runtime
for /f "tokens=*" %%s in ('powershell /command "[int][double]::Parse((Get-Date (get-date).touniversaltime() -UFormat %%s))" ') do set epoch=%%s
rem show the epoch time now
echo Epoch Time Now: %epoch%

pause>nul
endlocal
exit