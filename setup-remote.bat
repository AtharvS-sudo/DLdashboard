@echo off
REM Setup GitHub Remote Repository Script for Windows

echo.
echo ================================
echo   GitHub Remote Setup
echo ================================
echo.
echo First, create a new repository on GitHub:
echo 1. Go to https://github.com/new
echo 2. Name it: dl-dashboard
echo 3. DO NOT initialize with README
echo 4. Click 'Create repository'
echo.
set /p created="Have you created the repository? (y/n): "

if /i not "%created%"=="y" (
    echo.
    echo Please create the repository first, then run this script again.
    pause
    exit /b
)

echo.
set /p username="Enter your GitHub username: "
set /p reponame="Enter your repository name (press Enter for 'dl-dashboard'): "

if "%reponame%"=="" set reponame=dl-dashboard

set REPO_URL=https://github.com/%username%/%reponame%.git

echo.
echo Setting up remote: %REPO_URL%
git remote add origin %REPO_URL%

echo.
echo Remote added successfully!
echo.
echo Now pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ================================
    echo   Success!
    echo ================================
    echo.
    echo Your code is now on GitHub!
    echo.
    echo Next steps:
    echo 1. Go to https://vercel.com
    echo 2. Sign in with GitHub
    echo 3. Click "Add New Project"
    echo 4. Select your repository
    echo 5. Click "Deploy"
    echo.
) else (
    echo.
    echo ================================
    echo   Push Failed
    echo ================================
    echo.
    echo You may need to authenticate with GitHub.
    echo.
    echo Try one of these solutions:
    echo 1. Use GitHub Desktop (easiest)
    echo 2. Setup Personal Access Token
    echo 3. Setup SSH key
    echo.
    echo See SETUP_GITHUB.md for detailed instructions.
    echo.
)

pause
