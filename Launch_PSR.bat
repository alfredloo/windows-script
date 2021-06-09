@echo off
cls

rem set today=%date:~10,4%%date:~4,2%%date:~7,2%
rem set today=%date:~7,2%-%date:~4,2%-%date:~10,4%_%time:~0,2%_%time:~3,2%_%time:~6,2%
rem set today=PSR-%date:~10,4%%date:~7,2%%date:~4,2%%time:~0,2%%time:~3,2%%time:~6,2%
set hh=%time:~0,2%
if "%time:~0,1%"==" " set hh=0%hh:~1,1%   

set today=PSR-%date:~10,4%%date:~7,2%%date:~4,2%_%hh%_%time:~3,2%_%time:~6,2%
echo Today date =%today% and start Steps Recorder
echo 
echo "WARNING !!!!"
echo "Do not pause and start the Recorder or data will be lost"
echo "Always exit and launch again"

psr.exe /start /output C:\Users\<userid>\Documents\%today%.zip /sc 1 /maxsc 99 /stopevent 123456
psr.exe /stop
pause
