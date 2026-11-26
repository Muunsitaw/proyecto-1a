#!/usr/bin/env bash
# Ejecuta el programa (compila primero si aun no existe el JAR).
cd "$(dirname "$0")"
[ -f dist/Impuestos.jar ] || ./build.sh
exec java -jar dist/Impuestos.jar
