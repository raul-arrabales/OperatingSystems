#! /bin/bash

# Number of parameters
params=3 

echo Program $0 started with $# parameters... 

case "$#" in 

$params) # Right number of parameters

  echo Using $0 with $# parameters: [$1] [$2] [$3]

;;

*)  # Incorrect number of parameters

  echo ERROR: Incorrect number of parameters. 
  echo Please use: $0 [directory] [criteria] [action]

;;
esac
