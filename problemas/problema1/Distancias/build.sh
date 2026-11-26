#!/usr/bin/env bash
# Compila el proyecto y genera un JAR ejecutable y autocontenido (macOS / Linux / Git Bash).
# Requiere JDK 11 o superior (javac y jar en el PATH).
# No toca la carpeta build/ de NetBeans: compila en una carpeta temporal.
set -euo pipefail
cd "$(dirname "$0")"

MAIN=distancias.Menu
OUT=dist/Distancias.jar
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

mkdir -p dist
rm -f "$OUT"

echo "Compilando..."
javac --release 11 -encoding UTF-8 -cp lib/AbsoluteLayout.jar -d "$STAGE" src/distancias/*.java

echo "Copiando imagenes..."
cp -R src/imagenes "$STAGE/imagenes"

echo "Incluyendo AbsoluteLayout dentro del JAR..."
(cd "$STAGE" && jar xf "$OLDPWD/lib/AbsoluteLayout.jar" org)

jar --create --file "$OUT" --main-class "$MAIN" -C "$STAGE" .
echo
echo "Listo: $OUT"
echo "Ejecuta con:  java -jar $OUT"
