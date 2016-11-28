#!/bin/bash

# Parsing list of arguments 
# Usage: script <dir> <criteria> 
# 
# Criteria: [-t|-n|-p]
# File type selection: -t [f|d] (f for files, d for dirs) 
# Name selection: -n <string>  (objects matching the string)
# Perms selection: -p [x|r|w] (objects matching specified permissions) 

DIR=$1
shift

# Loop until all params are consumed
while [[ $# -gt 1 ]]
do
key="$1" # Key is the param flag

case $key in

    -t|--type)
    TYPE="$2"
    shift # past argument
    ;;

    -n|--name)
    NAME="$2"
    shift # past argument
    ;;

    -p|--perms)
    PERM="$2"
    shift # past argument
    ;;

    *)
    # unknown option
    ;;

esac
shift # past argument or value
done

echo DIR   = "${DIR}"
echo TYPE  = "${TYPE}"
echo NAME  = "${NAME}"
echo PERMS = "${PERM}"

echo "Number files in DIR matching NAME:" $(ls -1 "${DIR}"/*"${NAME}"* | wc -l)

if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    tail -1 $1
fi
