@echo off

if "%~1"=="1" call modules\info.bat
if "%~1"=="2" call modules\backup.bat
if "%~1"=="3" call modules\debloat.bat Samsung
if "%~1"=="4" call modules\debloat.bat Google
if "%~1"=="5" call modules\debloat.bat Microsoft
if "%~1"=="6" call modules\optimize.bat
if "%~1"=="7" call modules\restore.bat
if "%~1"=="8" adb reboot
if "%~1"=="9" call modules\about.bat

goto :eof