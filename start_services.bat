@echo off
cd /d d:\医疗平台

if not exist logs mkdir logs

echo ========================================== > logs/service_startup.log
echo Medical Platform Service Startup >> logs/service_startup.log
echo %date% %time% >> logs/service_startup.log
echo ========================================== >> logs/service_startup.log

echo Stopping existing services...
echo Stopping existing services... >> logs/service_startup.log
taskkill /f /im node.exe >nul 2>&1
timeout /t 2 /nobreak >nul

echo Starting Backend Service...
echo Starting Backend Service... >> logs/service_startup.log
start "Backend" cmd /k cd /d "d:\医疗平台\医疗平台后端" ^& node index.js

timeout /t 3 /nobreak >nul

echo Starting Frontend Service...
echo Starting Frontend Service... >> logs/service_startup.log
start "Frontend" cmd /k cd /d "d:\医疗平台" ^& npm run dev

timeout /t 3 /nobreak >nul

echo.
echo Services started successfully!
echo Backend: http://localhost:8081
echo Frontend: http://localhost:5173

echo Services started successfully! >> logs/service_startup.log
echo Backend: http://localhost:8081 >> logs/service_startup.log
echo Frontend: http://localhost:5173 >> logs/service_startup.log
echo ========================================== >> logs/service_startup.log