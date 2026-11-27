@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title Lezdatu Water - All-in-one staff approval and deployment
where node.exe >nul 2>nul
if errorlevel 1 goto no_node
where npx.cmd >nul 2>nul
if errorlevel 1 goto no_node
node "tools\deploy.cjs"
set "RESULT=%ERRORLEVEL%"
echo.
pause
exit /b %RESULT%
:no_node
echo Install Node.js 22 LTS or newer from https://nodejs.org/ first.
echo Then close this window and open DEPLOY_WINDOWS.cmd again.
pause
exit /b 1
