@ECHO OFF
SETLOCAL

SET file_path="INSET FILE PATH"

cd %file_path%

REM Set file not found errors
IF %ERRORLEVEL% NEQ 0 (
    ECHO "Directory not found"
    EXIT /B 1
)
IF NOT EXIST plover_console.exe (
    ECHO "Plover console not found"
    EXIT /B 1
)
IF NOT EXIST plover.exe (
    ECHO "Plover not found"
    EXIT /B 1
)

REM Check if pythonw.exe is running
tasklist /fi "ImageName eq pythonw.exe" /fo csv 2>NUL | find /I "pythonw.exe">NUL

if %ERRORLEVEL% NEQ 0 (
    REM If not running, start Plover
    .\plover.exe
    .\plover_console.exe -s plover_send_command resume
) else (
    REM If running, toggle Plover
    .\plover_console.exe -s plover_send_command toggle
)

EXIT /B 0