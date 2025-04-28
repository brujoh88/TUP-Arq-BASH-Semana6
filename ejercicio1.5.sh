#!/bin/bash
# Autor: [Tiseira Gustavo]
# Fecha: [28/10/2025]

clear
echo "Ejercicio 1.5"
if [ $# -eq 0 ]; then
    echo "No se han pasado parámetros al script."
    read -p "No ha introducido ninguno. ¿Quiere ingresarlos ahora s/n?" respuesta
    if [ "$respuesta" == "s" ] || [ "$respuesta" == "S" ]; then
        read -p "Ingrese el primer numero: " num1
        read -p "Ingrese el segundo nummero: " num2
    else
        echo "Saliendo del script."
        exit 1
    fi
fi

if [[ $# -lt 2 && $# -gt 0 ]]; then
    echo "Se ha introducido un solo parametro."
    read -p "¿Quiere ingresar el otro ahora s/n?" respuesta
    if [ "$respuesta" == "s" ] || [ "$respuesta" == "S" ]; then
        num1=$1
        read -p "Ingrese la segunda cadena: " num2
    else
        echo "Saliendo del script."
        exit 1
    fi
fi

if [ $# -eq 2 ]; then
    echo "Correcto, se han pasado dos parámetros al script."
    num1=$1
    num2=$2
fi

echo "La suma de $num1 y $num2 es: $(($num1 + $num2))"
echo "La resta de $num1 y $num2 es: $(($num1 - $num2))"
echo "La multiplicacion de $num1 y $num2 es: $(($num1 * $num2))"
if [ $num2 -ne 0 ]; then
    echo "La division de $num1 y $num2 es: $(($num1 / $num2))"
else
    echo "No se puede dividir por cero."
fi