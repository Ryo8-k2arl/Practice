#!/bin/env sh

while [ "$0" != "y" ];
do
    read -r a1
    if [ "$a1" = "y" ]; then
        echo "Yes"
        continue
    else
        break
    fi
        echo "next"
done
echo "End"
