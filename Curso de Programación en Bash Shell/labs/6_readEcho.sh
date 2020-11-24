# !/bin/bash 
# Programa para ejemplificar cómo capturar la información del usuario utilizando el comenado ECHO, READ y $REPLY
# Author: Jorge Tokunaga

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "Ingresa una opción: "
read
option=$REPLY
echo -n "Ingresa el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opción:$option , backup:$backupName"


