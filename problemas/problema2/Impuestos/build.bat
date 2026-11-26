@echo off
rem Compila el proyecto y genera un JAR ejecutable y autocontenido (Windows).
rem Requiere JDK 11 o superior (javac y jar en el PATH).
rem No toca la carpeta build\ de NetBeans: compila en una carpeta temporal.
setlocal
cd /d "%~dp0"

set MAIN=impuestos.Menu
set OUT=dist\Impuestos.jar
set STAGE=%TEMP%\impuestos_build_%RANDOM%

if not exist dist mkdir dist
if exist %OUT% del /q %OUT%
mkdir "%STAGE%"

echo Compilando...
javac --release 11 -encoding UTF-8 -cp lib\AbsoluteLayout.jar -d "%STAGE%" src\impuestos\*.java
if errorlevel 1 goto error

echo Copiando imagenes...
xcopy /e /i /q src\imagenes "%STAGE%\imagenes" >nul

echo Incluyendo AbsoluteLayout dentro del JAR...
set ROOT=%CD%
pushd "%STAGE%"
jar xf "%ROOT%\lib\AbsoluteLayout.jar" org
popd

jar --create --file %OUT% --main-class %MAIN% -C "%STAGE%" .
if errorlevel 1 goto error

rmdir /s /q "%STAGE%"
echo.
echo Listo: %OUT%
echo Ejecuta con:  java -jar %OUT%
goto end

:error
if exist "%STAGE%" rmdir /s /q "%STAGE%"
echo.
echo ERROR: no se pudo compilar. Verifica que tienes el JDK 11+ instalado y en el PATH.
exit /b 1

:end
endlocal
