cls

netsh interface ip set address "Local Area Connection" static 111.222.333.111 255.255.255.0 111.222.333.1

netsh interface ip set dnsservers "Local Area Connection" static 111.222.333.2 pimary no
netsh interface ip add dns name="Local Area Connection" addr=111.222.333.3 index=2 no

pause

ipconfig

pause
