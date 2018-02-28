@echo off
REM Permet de faire certaines operations selon constructeur du pc
REM Test sur pc de marque Dell dans cet exemple

REM set variables
set manufacturer=

REM Get Computer Manufacturer
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Manufacturer /value') do SET manufacturer=%%A

echo. %manufacturer%

echo %manufacturer% | findstr /C:"Dell" 1>nul

if errorlevel 1 (
	echo. Not Dell
	goto :END
) ELSE (
  echo. Is Dell
  goto YOURINSTALL
)

rem Install
:YOURINSTALL
	echo. Your command here

:END
