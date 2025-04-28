#!bin/bash
# Autor: [Tiseira Gustavo]
# Fecha: [28/10/2025]
echo "Ingrese dos cadenas de texto, se verificara si alguna de ellas está vacía y, finalmente,
se compara ambas cadenas para determinar si son
iguales o no."
read -p "Ingrese la primera cadena: " cadena1
read -p "Ingrese la segunda cadena: " cadena2

# Verificar si ambas cadenas están vacías
if [ -z "$cadena1" ] && [ -z "$cadena2" ]; then
    echo "Ambas cadenas están vacías. No hay nada para comparar."
    exit 1
fi
# Verificar si alguna de las cadenas está vacía
if [ -z "$cadena1" ] ; then
  echo "La cadena1 esta vacia"
fi
if [ -z "$cadena2" ] ; then
    echo "La cadena2 esta vacia"
fi
# Comparar las cadenas
if [ "$cadena1" = "$cadena2" ]; then
    echo "Las cadenas son iguales."
  else
    echo "Las cadenas son diferentes."  
fi