# !/bin/bash
# Programa para ejemplificar el uso de los IF anidados.
# Author: Jorge Tokunaga

notaDeClase=0
continua=""
echo "************************************************"
echo "Ejemplo sentencia If Anidados"
echo "************************************************"
read -n2 -p "Indica cuales es la nota (1-10) " notaDeClase
echo -e "\n"
if (( $notaDeClase >= 7 )); then
    echo "El alumno aprobo la materia con una nota de: $notaDeClase   ¡¡¡¡¡Felicitaciones!!!!!!!"
    echo "************************************************"
    echo -e "\n"
    read -p "Si va continuar estudiando en el siguiente nivel (s/n):" continua
    if [ $continua = "s" ]; then
        echo "Ud continua estudiando, su respuesta fue $continua . Buena suerte para el siguiente curso.."
    else
        echo "Ud NO continua estudiando, su respuesta fue $continua . Lastima, pero aca te esperamos para seguir estudiando."
    fi
    echo "************************************************"
    echo -e "\n"
else
    echo "El alumno reprueba la materia con una nota de: $notaDeClase  Intentalo mas tarde :("
    echo -e "\n"
fi

