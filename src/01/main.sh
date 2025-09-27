#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Wrong number of parameters."
    exit 1
fi
if [ $# \> 1 ]; then
    echo "Please input only one parameter."
    exit 1
fi
if [[ "$1" =~ [a-zA-Z] ]];  then
    echo "$1"
else echo "Input only string variables."
fi
exit 0