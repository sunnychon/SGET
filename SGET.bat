@echo off
echo  ____   ____ _____ _____
echo / ___^| / ___^| ____^|_   _^|
echo \___ \^| ^|  _^|  _^|   ^| ^|
echo  ___) ^| ^|_^| ^| ^|___  ^| ^|
echo ^|____/ \____^|_____^| ^|_^|
echo Tool Kit Package v1.0.0
echo.
if "%1"=="-I" goto stweb
echo See More At:
echo https://github.com/sunnychon/SGET
echo Type %0 -I to open the website.
goto exitp
:stweb
start https://github.com/sunnychon/SGET
:exitp