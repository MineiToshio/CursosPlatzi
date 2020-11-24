# !/bin/bash 
# Programa para ejemplificar cómo se realiza el paso de opciones sin parámetros
# Author: Jorge Tokunaga

echo "Programa opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opción 3 enviada: $3"

echo "Opciones enviadas: $*"

echo ""
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a opción utilizada";;
-b) echo "-b opción utilizada";;
-c) echo "-c opción utilizada";;
*) echo "$! No es una opción válida.";;
esac
shift
done
