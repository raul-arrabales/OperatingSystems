#!/bin/bash

##############################
# FUNCTION Show usage and exit
##############################
function UsageAndExit 
{
  echo "Usage: search <dir> <criteria> <action>"
  exit 0
}

##############################
# FUNCTION Show Error
##############################
function ShowError 
{
  echo "$0: Error($1), $2"
}


# Check number of arguments:
if [[ $# -lt 4 ]]; then
	UsageAndExit
fi

path="$1"
criterio="$2"
opcriterio="$3"
tipoaccion="$4"
accion="$5"

# Check dir is readable
if [ ! -r $path ]; then
	ShowError 1 "Cannot read '$path'"
	exit 1
fi
