#!/bin/bash
# Autor: [Tiseira Gustavo]
# Fecha: [28/10/2025]

clear
echo "Ejercicio 1.5"

## Si no se pasan parámetros al script, se le pregunta al usuario si quiere ingresarlos.
## Si no se pasan correctamente los dos numeros, se sale del script.
if [ $# -eq 0 ]; then
    echo "No se han pasado parámetros (numeros) al script."
    read -p "No ha introducido ninguno. ¿Quiere ingresarlos ahora s/n?" respuesta
    if [ "$respuesta" == "s" ] || [ "$respuesta" == "S" ]; then
        read -p "Ingrese el primer numero: " num1
        read -p "Ingrese el segundo nummero: " num2
        if [[ -z "$num1" ]] || [[ -z "$num2" ]]; then
            echo "No se han pasado correctamente los dos numeros al script."
            echo "Saliendo del script."
            exit 1
        fi
    else
        echo "Saliendo del script."
        exit 1
    fi
fi

## Si se pasa un solo parámetro, se le pregunta al usuario si quiere ingresar el otro.
## Si no pasa correctamente el segundo numero, se sale del script.
if [[ $# -lt 2 && $# -gt 0 ]]; then
    echo "Se ha introducido un solo parametro."
    read -p "¿Quiere ingresar el otro ahora s/n?" respuesta
    if [ "$respuesta" == "s" ] || [ "$respuesta" == "S" ]; then
        num1=$1
        read -p "Ingrese el segundo numero: " num2
        if [[ -z "$num2" ]]; then
            echo "No se ha pasado correctamente el segundo numero al script."
            echo "Saliendo del script."
            exit 1
        fi
    else
        echo "Saliendo del script."
        exit 1
    fi
fi

## Si se pasan más de dos parámetros, se toman solo los dos primeros.
if [ $# -eq 2 ]; then
    echo "Correcto, se han pasado dos parámetros al script."
    num1=$1
    num2=$2
fi

## Si se pasan más de dos parámetros, se toman solo los dos primeros.
## Y setea los parámetros a los dos primeros.
if [ $# -gt 2 ]; then
    echo "Se han pasado mas de dos parametros, tomare solo dos primeros"
    num1=$1
    num2=$2
    set -- "$num1" "$num2"
fi

## Recorre los parámetros y verifica si son números.
for param in "$@"; do
    if [[ ! "$param" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then    
        echo "El parámetro '$param' NO es un número."
        exit 1
    fi
done

## Realiza las operaciones matemáticas y muestra los resultados.
echo "La suma de $num1 y $num2 es: $(($num1 + $num2))"
echo "La resta de $num1 y $num2 es: $(($num1 - $num2))"
echo "La multiplicacion de $num1 y $num2 es: $(($num1 * $num2))"
## Valida si el segundo número es cero antes de realizar la división.
if [ $num2 -ne 0 ]; then
    echo "La division de $num1 y $num2 es: $(echo "scale=2; $num1 / $num2" | bc)"
else
    echo "No se puede dividir por cero."
fi