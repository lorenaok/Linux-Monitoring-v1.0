#!/bin/bash

if [ $# -ne 0 ]; then
    echo "Wrong number of parameters."
else
chmod a+rwx info.sh save_info.sh
./info.sh
./save_info.sh
fi