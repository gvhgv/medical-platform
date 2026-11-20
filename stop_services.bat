@echo off
title Stop Medical Platform Services

set "LOG_FILE=d:\医疗平台\logs\service_stop.log"

if not exist "d:\医疗平台\logs" mkdir "d:\医疗平台\logs"

echo ========================================== > "%LOG_FILE%"
echo Medical Platform Service Stop >> "%LOG_FILE%"
echo %date% %time% >> "%LOG_FILE%"
echo ========================================== >> "%LOG_FILE%"

echo Stopping all Node.js processes...
echo Stopping all Node.js processes... >> "%LOG_FILE%"

tasklist | findstr node.exe >nul
if %ERRORLEVEL% equ 0 (
    taskkill /f /im node.exe
    if %ERRORLEVEL% equ 0 (
        echo Successfully stopped Node.js processes
        echo Successfully stopped Node.js processes >> "%LOG_FILE%"
    ) else (
        echo ERROR: Failed to stop Node.js processes
        echo ERROR: Failed to stop Node.js processes >> "%LOG_FILE%"
        pause
        exit /b 1
    )
) else (
    echo No running Node.js processes found
    echo No running Node.js processes found >> "%LOG_FILE%"
)

echo.
echo. >> "%LOG_FILE%"

echo Services stopped successfully!
echo Services stopped successfully! >> "%LOG_FILE%"
echo ========================================== >> "%LOG_FILE%"

exit