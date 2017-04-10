#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No documentation name supplied"
    exit 1
fi

arg=$1

# get the current location of this script
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
DIR="${SCRIPTPATH}/snippets"  

if [ "$arg" == "list" ]; then
    list=`ls ${DIR}`
    echo ${list}
else
    # echo "run $arg" 
    # echo $DIR/$1
    mdv $DIR/$1 |less

fi