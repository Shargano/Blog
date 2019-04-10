@echo off

:: check javac present
javac -version 2>nul
if errorlevel 1 (
    echo build: javac not found!
    echo.
    pause
    exit %errorlevel%
)

set OLD_PATH=%cd%

set CURRENT_DIR_PATH=%~dp0
set CURRENT_DIR_PATH=%CURRENT_DIR_PATH:~0,-1%
for %%a in ("%CURRENT_DIR_PATH%") do set PROJECT_NAME=%%~na

set OUT_DIR_NAME=target
set OUT_PROJECT_PATH=%OUT_DIR_NAME%\%PROJECT_NAME%
set OUT_BIN_PATH=%OUT_PROJECT_PATH%\bin
set OUT_JRE_PATH=%OUT_PROJECT_PATH%\jre
set OUT_LIB_PATH=%OUT_PROJECT_PATH%\lib

set PACKAGE_NAME=system
set MAIN_JAVA_NAME=ApplicationLauncher
set MAIN_JAVA_PATH=src\%PACKAGE_NAME%\%MAIN_JAVA_NAME%.java

cd /d "%CURRENT_DIR_PATH%"

rmdir /s /q "%OUT_DIR_NAME%" 2>nul
mkdir "%OUT_PROJECT_PATH%" "%OUT_BIN_PATH%" "%OUT_JRE_PATH%" "%OUT_LIB_PATH%"
for %%a in (INSTALL LICENSE README) do copy /y %%a "%OUT_PROJECT_PATH%" >nul

:: compile
call mvn compile
call mvn clean
call mvn package

cd /d "%OUT_BIN_PATH%"

:: make start script
echo @echo off > start.bat
echo.>> start.bat
echo java -version ^2^>nul >> start.bat
echo if errorlevel 1 ( >> start.bat
echo    echo %PROJECT_NAME%: java not found >> start.bat
echo.>> start.bat
echo    pause >> start.bat
echo    exit 1 >> start.bat
echo ) >> start.bat
echo.>> start.bat
echo java -jar target/%PROJECT_NAME%-1.0.jar >> start.bat
echo.>> start.bat
echo pause >> start.bat

cd /d "%CURRENT_DIR_PATH%\%OUT_DIR_NAME%"

:: zip project
jar -cMf "%PROJECT_NAME%".zip "%PROJECT_NAME%"

cd /d "%CURRENT_DIR_PATH%"

:: write build date
::echo %PROJECT_NAME% >> README
::echo build date: %date% >> README

:: set old_path
cd /d "%OLD_PATH%"
