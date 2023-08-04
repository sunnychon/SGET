@echo off
powershell start-process -FilePath cmd -ArgumentList '/c del /f /q "%systemroot%\System32\SGET*.bat"' -verb runas -wait
echo Done!
pause