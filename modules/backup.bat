@echo off

call lib\ui.bat :Header

echo Creando respaldo...
echo.

if not exist backup mkdir backup

set FECHA=%DATE:/=-%
set HORA=%TIME::=-%

set DESTINO=backup

echo Guardando paquetes...

adb shell pm list packages > "%DESTINO%\packages.txt"

echo Guardando aplicaciones del sistema...

adb shell pm list packages -s > "%DESTINO%\system.txt"

echo Guardando aplicaciones del usuario...

adb shell pm list packages -3 > "%DESTINO%\user.txt"

echo Guardando propiedades...

adb shell getprop > "%DESTINO%\build.prop"

echo Guardando informacion...

(
echo Modelo:
adb shell getprop ro.product.model

echo.

echo Android:
adb shell getprop ro.build.version.release

echo.

echo Build:
adb shell getprop ro.build.display.id

) > "%DESTINO%\device.txt"

call lib\ui.bat :Success "Backup completado."

call lib\ui.bat :Pause