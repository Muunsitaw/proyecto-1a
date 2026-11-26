@echo off
cd /d "%~dp0"
if not exist dist\Impuestos.jar call build.bat
java -jar dist\Impuestos.jar
