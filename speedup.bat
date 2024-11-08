@echo off
:: Clear temporary files
echo Cleaning temporary files...
del /s /q %temp%\* > nul
del /s /q C:\Windows\Temp\* > nul
echo Temporary files cleaned.

:: Clear prefetch files
echo Cleaning prefetch files...
del /s /q C:\Windows\Prefetch\* > nul
echo Prefetch files cleaned.

:: Disable startup apps via registry (manual steps for now)
echo For better performance, manually disable unnecessary startup apps in Task Manager.

:: Run Disk Cleanup tool
echo Running Disk Cleanup...
cleanmgr /sagerun:1

:: Check for system file integrity
echo Checking for system file integrity...
sfc /scannow

:: Optimize virtual memory suggestion (manual step)
echo Consider adjusting virtual memory settings in System > Advanced > Performance.

:: Check for and install Windows updates
echo Checking for Windows updates...
powershell -command "Get-WindowsUpdate | Install-WindowsUpdate -AcceptAll -AutoReboot"

:: Suggestion to update Chrome
echo Ensure Chrome is updated manually.

:: End script
echo Optimization tasks completed. Some tasks may require manual actions.
pause
