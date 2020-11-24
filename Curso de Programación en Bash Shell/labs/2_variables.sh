# !/bin/bash
# Programa para revisar la declaración de variables

opcion=0
nombre=Jorge

#echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variable
export nombre

# Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
