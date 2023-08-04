@echo off
echo  ____   ____ _____ _____   ___ _   _ ____ _____  _    _     _     _____ ____
echo / ___^| / ___^| ____^|_   _^| ^|_ _^| \ ^| / ___^|_   _^|/ \  ^| ^|   ^| ^|   ^| ____^|  _ \
echo \___ \^| ^|  _^|  _^|   ^| ^|    ^| ^|^|  \^| \___ \ ^| ^| / _ \ ^| ^|   ^| ^|   ^|  _^| ^| ^|_^) ^|
echo  ___^) ^| ^|_^| ^| ^|___  ^| ^|    ^| ^|^| ^|\  ^|___^) ^|^| ^|/ ___ \^| ^|___^| ^|___^| ^|___^|  _ ^<
echo ^|____/ \____^|_____^| ^|_^|   ^|___^|_^| \_^|____/ ^|_/_/   \_\_____^|_____^|_____^|_^| \_\

openfiles >nul 2>&1
if %ERRORLEVEL%==1 echo This Program Need ADMIN!&echo Right ME And Run ME As ADMIN&echo Press ANY KEY To EXIT. . .&pause>nul&goto exit
cd "%~dp0"
echo Copying Files...
copy SGET*.bat %systemroot%\System32 >nul
echo Done!
pause
:exit