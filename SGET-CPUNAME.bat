@echo off
setlocal
echo  ____   ____ _____ _____      ____ ____  _   _ _   _    _    __  __ _____ 
timeout 0 >nul
echo / ___^| / ___^| ____^|_   _^|    / ___^|  _ \^| ^| ^| ^| \ ^| ^|  / \  ^|  \/  ^| ____^|
timeout 0 >nul
echo \___ \^| ^|  _^|  _^|   ^| ^|_____^| ^|   ^| ^|_) ^| ^| ^| ^|  \^| ^| / _ \ ^| ^|\/^| ^|  _^|  
timeout 0 >nul
echo  ___) ^| ^|_^| ^| ^|___  ^| ^|_____^| ^|___^|  __/^| ^|_^| ^| ^|\  ^|/ ___ \^| ^|  ^| ^| ^|___ 
timeout 0 >nul
echo ^|____/ \____^|_____^| ^|_^|      \____^|_^|    \___/^|_^| \_/_/   \_\_^|  ^|_^|_____^|
echo.
timeout 2 >nul
echo v1.0.0
echo.
timeout 0 >nul
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"wmic cpu get name /value"') DO IF NOT ERRORLEVEL 1 SET "CPUNAME=%%A"
echo CPU Name: %CPUNAME%
endlocal