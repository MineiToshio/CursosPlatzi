# !/bin/bash
# Programa para ejemplificar el paso de argumentos.
# Autor: Jorge Tokunaga

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es $nombreCurso en el horario de $horarioCurso"
echo "Los parámetros envidos es: $#"
echo "Todos los parámetros enviados son: $*"

