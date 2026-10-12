@echo off
findstr /C:"My First CI/CD Pipeline" index.html >nul
if errorlevel 1 (
echo TEST FAILED
exit /b 1
)
echo TEST PASSED
