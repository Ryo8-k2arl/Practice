#!/bin/env sh

while [ "$0" != "y" ];
do
    read -r a1
    if [ "$a1" = "y" ]; then
        echo "Yes"
    else
        break
    fi
done
