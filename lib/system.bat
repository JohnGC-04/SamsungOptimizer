@echo off
goto :eof

:Initialize

call :CheckFolders
call :CheckADB
call :CheckDevice

goto :eof


:CheckFolders

if not exist logs mkdir logs
if not exist backup mkdir backup
if not exist temp mkdir temp

goto :eof


:CheckADB

where adb >nul 2>&1

if errorlevel 1 (

    echo.
    echo ADB no esta instalado.
    pause
    exit

)

adb start-server >nul

goto :eof


:CheckDevice

for /f %%i in ('adb get-state 2^>nul') do set DEVICE=%%i

if not "%DEVICE%"=="device" (

    echo.
    echo No hay dispositivo conectado.
    pause
    exit

)

goto :eof