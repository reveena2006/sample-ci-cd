
@echo off
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "if (Select-String -Path 'index.html' -Pattern 'My First CI/CD Pipeline' -Quiet) { Write-Output 'TEST PASSED'; exit 0 } else { Write-Output 'TEST FAILED'; exit 1 }"
exit /b %ERRORLEVEL%
