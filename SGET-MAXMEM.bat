@echo off
setlocal
:: ____   ____ _____ _____     __  __    _    __  ____  __ _____ __  __ 
::/ ___| / ___| ____|_   _|   |  \/  |  / \   \ \/ /  \/  | ____|  \/  |
::\___ \| |  _|  _|   | |_____| |\/| | / _ \   \  /| |\/| |  _| | |\/| |
:: ___) | |_| | |___  | |_____| |  | |/ ___ \  /  \| |  | | |___| |  | |
::|____/ \____|_____| |_|     |_|  |_/_/   \_\/_/\_\_|  |_|_____|_|  |_|
::
::A TOOL FOR GETTING THE MAX MEMORY THAT YOUR MOTHERBOARD SUPPORT.
::From SGET Tools

::Show LOGO
echo  ____   ____ _____ _____     __  __    _    __  ____  __ _____ __  __ 
timeout 0 >nul
echo / ___^| / ___^| ____^|_   _^|   ^|  \/  ^|  / \   \ \/ /  \/  ^| ____^|  \/  ^|
timeout 0 >nul
echo \___ \^| ^|  _^|  _^|   ^| ^|_____^| ^|\/^| ^| / _ \   \  /^| ^|\/^| ^|  _^| ^| ^|\/^| ^|
timeout 0 >nul
echo  ___) ^| ^|_^| ^| ^|___  ^| ^|_____^| ^|  ^| ^|/ ___ \  /  \^| ^|  ^| ^| ^|___^| ^|  ^| ^|
timeout 0 >nul
echo ^|____/ \____^|_____^| ^|_^|     ^|_^|  ^|_/_/   \_\/_/\_\_^|  ^|_^|_____^|_^|  ^|_^|
timeout 2 >nul

echo.

::Show Version
echo v1.0.0

::Detect Args
timeout 0 >nul
if "%1"=="" goto GB
if %1==/MB goto MB
if %1==/KB goto KB
if %1==/GB goto GB
if %1==-MB goto MB
if %1==-KB goto KB
if %1==-GB goto GB
if %1==/? goto help
if %1==-? goto help
if %1==/h goto help
if %1==-h goto help
goto help


:::GB

:GB

::Use WMIC To Get MAX MEMORY(KB)
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC memphysical get maxcapacity /value"') DO IF NOT ERRORLEVEL 1 SET "RAM=%%A"

::Turn KB To GB
set /a MRAM=%RAM%/1048576

::Show The value&Exit
echo Max Memory: %MRAM%GB
goto exitp

:::MB

:MB

::Use WMIC To Get MAX MEMORY(KB)
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC memphysical get maxcapacity /value"') DO IF NOT ERRORLEVEL 1 SET "RAM=%%A"

::Turn KB To MB
set /a MRAM=%RAM%/1024

::Show The value&Exit
echo Max Memory: %MRAM%MB
goto exitp

:::KB

:KB

::Use WMIC To Get MAX MEMORY(KB)
FOR /F "TOKENS=2 DELIMS==" %%A IN ('"WMIC memphysical get maxcapacity /value"') DO IF NOT ERRORLEVEL 1 SET "MRAM=%%A"

::Show The value&Exit
echo Max Memory: %MRAM%KB
goto exitp

:::Help page
:help
echo %0 [command]
echo Commands:
echo ^| /GB,-GB     ^|Set OUTPUT to GB
echo ^| /MB,-MB     ^|Set OUTPUT to MB
echo ^| /KB,-KB     ^|Set OUTPUT to KB
echo ^| /?,-?,/h,-h ^|Show HELP page

::exit the program
:exitp
timeout 0 >nul
endlocal
