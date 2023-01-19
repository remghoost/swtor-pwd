@echo off

start "" "C:\PATH\TO\LAUNCHER.EXE"
timeout /t 2

set "password=YOURPASSWORD"

rem Wait for the program to open
timeout /t 2

rem Send the password to the active window
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('%password%')"

rem Press enter
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{ENTER}')"
