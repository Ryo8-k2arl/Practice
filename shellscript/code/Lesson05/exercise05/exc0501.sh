#!/bin/env bash

while [ "$0" != "y" ]; do
    read -r a1
    echo "$a1"
    if [ "$a1" = "n" ]; then
        break
    fi
done

# while [ "$1" != "n" ]; do
#     echo "$1"
#     shift
# done
