#!/bin/bash

dir=$1

echo Usando el directorio $1


for fichero in "$1"/*; do
if [[ -r "$fichero" && -f "$fichero" ]] 
then
    lista+=($fichero) 
fi
done

echo
echo
echo "${lista[@]}"



