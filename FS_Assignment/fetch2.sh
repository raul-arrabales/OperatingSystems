#!/bin/bash

dir=$1

echo Usando el directorio $1

isreadable() {
[[ -r "$1" && -f "$1" ]] 
}



for fichero in "$1"/*; do

if [[ -r "$fichero" && -f "$fichero" ]] 
then
    lista1+=($fichero) 
fi

if isreadable $fichero
then
    lista2+=($fichero) 
fi

done

echo "${lista1[@]}"
echo
echo "${lista2[@]}"
