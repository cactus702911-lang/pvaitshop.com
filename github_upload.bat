@echo off
chcp 65001 >nul
echo ========================================
echo   PVAitShop - GitHub Upload Tool
echo ========================================
echo.

cd /d "c:\Users\Maruf\Downloads\verifiedvault - Copy\verifiedvault"

echo [1/3] Sob file add korchi...
git add .
if %errorlevel% neq 0 (
    echo ERROR: Git add failed!
    pause
    exit /b 1
)

echo.
echo [2/3] Commit korchi...
set TIMESTAMP=%date% %time%
git commit -m "Site update: %TIMESTAMP%"
if %errorlevel% neq 0 (
    echo NOTE: Kono notun change nei, already up to date.
    echo.
    pause
    exit /b 0
)

echo.
echo [3/3] GitHub a upload korchi...
git push origin main
if %errorlevel% neq 0 (
    echo ERROR: Push failed! Internet connection check koro.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   SUCCESS! GitHub a upload complete!
echo   https://github.com/cactus702911-lang/pvaitshop.com
echo ========================================
echo.
pause
