#!/bin/bash

dir=$1

echo Usando el directorio $1


for fichero in "$1"/*; do

# -a FILE        True if file exists.
# -e FILE        True if file exists.
# -f FILE        True if file exists and is a regular file.
# -r FILE        True if file is readable by you.
# -s FILE        True if file exists and is not empty.
# -w FILE        True if the file is writable by you.

if [[ -r "$fichero" && -f "$fichero" ]] 
then
    lista+=($fichero) 
fi
done

echo
echo
echo "${lista[@]}"



