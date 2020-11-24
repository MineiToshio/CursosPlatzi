# !/bin/bash 
# Programa para ejemplificar cómo capturar la información del usuario utilizando el comando READ y $REPLY
# Author: Jorge Tokunaga

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresa una opción: " option
read -p "Ingresa el nombre del archivo del backup: " backupName
echo "Opción:$option , backup:$backupName"
