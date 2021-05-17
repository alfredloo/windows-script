@echo off
cls

rem set today=%date:~10,4%%date:~4,2%%date:~7,2%
rem set today=%date:~7,2%-%date:~4,2%-%date:~10,4%_%time:~0,2%_%time:~3,2%_%time:~6,2%
set today=PSR-%date:~10,4%%date:~4,2%%date:~7,2%%time:~0,2%%time:~3,2%%time:~6,2%

echo Today date =%today% and start Steps Recorder

psr.exe /start /output C:\Users\P1206812\Documents\%today%.zip /sc 1 /maxsc 99 /stopevent 123456
psr.exe /stop
