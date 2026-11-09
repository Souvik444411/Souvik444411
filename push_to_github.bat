@echo off
title Push Futuristic GitHub Profile Dashboard - Souvik Chowdhury
color 0b
echo =====================================================================
echo    SOUVIK CHOWDHURY (@Souvik444411) - GITHUB PROFILE DEPLOYMENT
echo =====================================================================
echo.
echo Step 1: Checking if remote repository 'Souvik444411/Souvik444411' exists...
echo.

git remote remove origin >nul 2>&1
git remote add origin https://github.com/Souvik444411/Souvik444411.git

echo Attempting to push your animated profile dashboard to GitHub...
echo.
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo =====================================================================
    echo   [SUCCESS] Your GitHub profile dashboard is now LIVE!
    echo   Visit: https://github.com/Souvik444411
    echo =====================================================================
    start https://github.com/Souvik444411
    pause
    exit /b 0
)

echo.
echo =====================================================================
echo   [NOTICE] Repository not found yet on your GitHub account!
echo =====================================================================
echo   To enable your special GitHub profile dashboard:
echo   1. Opening https://github.com/new in your browser now...
echo   2. Set Repository Name to: Souvik444411
echo   3. Set Visibility to: Public
echo   4. Click 'Create repository' (Do NOT check initialize with README)
echo.
start https://github.com/new?name=Souvik444411
echo   Press any key once you have clicked 'Create repository' on GitHub...
pause >nul

echo.
echo Retrying push to https://github.com/Souvik444411/Souvik444411.git...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo =====================================================================
    echo   [SUCCESS] Your futuristic profile dashboard is now LIVE!
    echo   Visit: https://github.com/Souvik444411
    echo =====================================================================
    start https://github.com/Souvik444411
) else (
    echo.
    echo If authentication is requested, sign in with GitHub or your Personal Access Token.
)

pause
