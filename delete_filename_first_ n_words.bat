@echo off
setlocal enabledelayedexpansion

::Removing the first N characters from the filename
set /p deletenum=please input deletenum:

for /r %%i in (*) do (
    if not "%%~fi"=="%~f0" (
        set "t=%%~ni"
        ren "%%i" "!t:~%deletenum%!%%~xi"
    )
)

pause
