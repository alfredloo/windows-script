@echo off
cls
rem How to use this script
rem 1. Download to desktop
rem 2. Use Notepad to change <userid> to your windows login name
rem 3. Save
rem 4. Make sure file type is BAT
rem 5. Double click to launch.
rem 
rem set today=%date:~10,4%%date:~4,2%%date:~7,2%
rem set today=%date:~7,2%-%date:~4,2%-%date:~10,4%_%time:~0,2%_%time:~3,2%_%time:~6,2%
rem set today=PSR-%date:~10,4%%date:~7,2%%date:~4,2%%time:~0,2%%time:~3,2%%time:~6,2%
set hh=%time:~0,2%
if "%time:~0,1%"==" " set hh=0%hh:~1,1%   

set today=PSR-%date:~11,4%%date:~7,3%%date:~4,2%_%hh%_%time:~3,2%_%time:~6,2%
echo Today date =%today% and start Steps Recorder
echo 
echo "WARNING !!!!"
echo "Do not pause and start the Recorder or data will be lost"
echo "Always exit and launch again"

psr.exe /start /output C:\Users\<userid>\Documents\%today%.zip /sc 1 /maxsc 99 /stopevent 123456
psr.exe /stop
pause
