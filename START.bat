@echo off
echo ========================================
echo   SENTINEL Dashboard Starting...
echo ========================================
echo.
echo Opening dashboard in your browser...
echo.
echo NOTE: Keep this window open while using the dashboard
echo       Close this window when you're done
echo.
echo ========================================

cd /d "%~dp0"
start http://localhost:8000
python -m http.server 8000

pause
