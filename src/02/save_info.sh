#!/bin/bash
read -p "Are you sure? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    file="$(date +"%d_%m_%y_%H_%M_%S").status"
    sudo bash -c "./info.sh > "${file}""
fi
