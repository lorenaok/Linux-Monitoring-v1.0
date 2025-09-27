#!/bin/bash

if [[ "$1" =~ [a-zA-Z] ]]; then
    echo "Please input integer variables."
    exit 1
fi

if [[ "$2" =~ [a-zA-Z] ]]; then
    echo "Please input integer variables."
    exit 1
fi

if [[ "$3" =~ [a-zA-Z] ]]; then
    echo "Please input integer variables."
    exit 1
fi

if [[ "$4" =~ [a-zA-Z] ]]; then
    echo "Please input integer variables."
    exit 1
fi

if [[ ! "$1" =~ ^[1-6]$ ]]; then
    echo "Please input parameters from 1 to 6."
    exit 1
fi

if [[ ! "$2" =~ ^[1-6]$ ]]; then
    echo "Please input parameters from 1 to 6."
    exit 1
fi

if [[ ! "$3" =~ ^[1-6]$ ]]; then
    echo "Please input parameters from 1 to 6."
    exit 1
fi

if [[ ! "$4" =~ ^[1-6]$ ]]; then
    echo "Please input parameters from 1 to 6."
    exit 1
fi

if [ $# -ne 4 ]; then
    echo "Please input 4 parameters (from 1 to 6)."
    exit 1
fi

if [ "$1" = "$2" ] || [ "$3" = "$4" ]; then
    echo "Error: 1st and 2nd, 3rd and 4th parameters should differ from each other."
    read -p "Restart the script? (y/n)" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    read -p "bash main.sh" arg
    bash main.sh $arg
    exit 0
    else
        exit 1
    fi
fi



chmod a+rwx colors.sh
. colors.sh