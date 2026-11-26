#!/usr/bin/env bash
# Ejecuta el programa (compila primero si aun no existe el JAR).
cd "$(dirname "$0")"
[ -f dist/Distancias.jar ] || ./build.sh
exec java -jar dist/Distancias.jar
