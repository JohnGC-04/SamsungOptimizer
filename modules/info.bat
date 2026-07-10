@echo off

call lib\ui.bat :Header

echo Informacion del dispositivo
echo.

echo Modelo:
for /f "delims=" %%i in ('adb shell getprop ro.product.model') do echo    %%i

echo.

echo Fabricante:
for /f "delims=" %%i in ('adb shell getprop ro.product.manufacturer') do echo    %%i

echo.

echo Android:
for /f "delims=" %%i in ('adb shell getprop ro.build.version.release') do echo    %%i

echo.

echo Bootloader:
for /f "delims=" %%i in ('adb shell getprop ro.boot.bootloader') do echo    %%i

echo.

echo Build:
for /f "delims=" %%i in ('adb shell getprop ro.build.display.id') do echo    %%i

echo.

echo Nivel API:
for /f "delims=" %%i in ('adb shell getprop ro.build.version.sdk') do echo    %%i

echo.

echo Espacio disponible:

adb shell df -h /data

echo.

echo Memoria RAM:

adb shell cat /proc/meminfo | findstr Mem

call lib\ui.bat :Footer

call lib\ui.bat :Pause