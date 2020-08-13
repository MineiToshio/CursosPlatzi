# !/bin/bash
# Programa para ejemplificar el uso de los IF anidados.
# Author: Jorge Tokunaga

edad=0
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese el path de su archivo:" pathArchivo

echo ""
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es un@ adolescente"
else 
    echo "La persona es mayor de edad"
fi
