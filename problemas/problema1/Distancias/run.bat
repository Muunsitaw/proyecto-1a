@echo off
cd /d "%~dp0"
if not exist dist\Distancias.jar call build.bat
java -jar dist\Distancias.jar
