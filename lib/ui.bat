@echo off
goto :eof

:Header
cls
echo ===============================================================
echo               Samsung Optimizer Pro v1.0
echo ===============================================================
echo.
goto :eof

:Footer
echo.
echo ===============================================================
goto :eof

:Pause
echo.
pause
goto :eof

:Error
echo.
echo [ERROR] %~1
echo.
pause
goto :eof

:Success
echo.
echo [OK] %~1
goto :eof