#!/bin/bash
# Autor: [Tiseira Gustavo]
# Fecha: [28/10/2025]

clear
echo "Ejercicio 1.2"
read -p "Por favor, ingrese el nombre de usuario al que desea enviar un mensaje:" nombre_usuario
read -p "Por favor, ingrese el mensaje que desea enviar:" mensaje
echo "$mensaje" | write $nombre_usuario