@echo off
title mkdir

set /p mkdirs="Dir Name: "
set /p dirs="Where To Put it: "

cd /d "%dirs%"

color 1f
echo Creating Dir....
timeout /t 3 /nobreak >nul

mkdir "%mkdirs%"

echo.
echo Done!
pause
exit