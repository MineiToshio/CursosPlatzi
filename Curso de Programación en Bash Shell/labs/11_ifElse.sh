# !/bin/bash
# Author: Jorge Tokunaga

edad=0

read -p "Introduzca su edad: " edad

if [ $edad -le 0 ]; then
    echo "La persona aun no ha nacido, ni falta que le hace"
elif [ $edad -ge 1 ] && [ $edad -le 13 ]; then
    echo "Es un niño"
elif [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
elif [ $edad -ge 65 ] && [ $edad -le 90 ]; then
    echo "La persona es bastante mayor ya"
else
    echo "La persona es un dinosaurio"
fi
