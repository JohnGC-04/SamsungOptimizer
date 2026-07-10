@echo off
title Samsung Optimizer Pro
color 0A
setlocal EnableDelayedExpansion

:: Ir a la carpeta del proyecto
cd /d "%~dp0"

:: Iniciar aplicación
call lib\system.bat :Initialize

:: Menú principal
:MENU

call lib\ui.bat :Header
call lib\ui.bat :MainMenu

set /p OPTION=Seleccione una opcion: 

if "%OPTION%"=="0" exit

call lib\menu.bat %OPTION%

goto MENU