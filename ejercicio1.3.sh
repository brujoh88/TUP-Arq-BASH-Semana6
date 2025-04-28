#!/bin/bash
# Autor: [Tiseira Gustavo]
# Fecha: [28/10/2025]

clear
echo "Ejercicio 1.3"
echo "1."
if [ $# -eq 0 ]; then
    echo "No se han pasado parámetros al script."
    exit 1
fi
if [ $# -lt 9 ]; then
    echo "Se han pasado menos de 9 parámetros al script."
    exit 1
fi
if [ $# -gt 9 ]; then
    echo "Se han pasado más de 9 parámetros al script."
    exit 1
fi
echo "Se han pasado exactamente 9 parámetros al script."
echo "2."
echo "El parametro \$1 es: $1"
echo "El parametro \$2 es: $2"
echo "El parametro \$3 es: $3"
echo "El parametro \$4 es: $4"
echo "El parametro \$5 es: $5"
echo "El parametro \$6 es: $6"
echo "El parametro \$7 es: $7"
echo "El parametro \$8 es: $8"
echo "El parametro \$9 es: $9"
echo "3."
echo "El total de parametros es: $#"
echo "4."
echo "Los parametros concatenados son: $*"
echo "5."
echo "El nombre del archivo ejecutado es: $0"