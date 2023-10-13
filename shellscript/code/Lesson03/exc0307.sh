#!/bin/sh

read -r a1
if [ "$a1" = "s" ]; then
    echo "soccer"
elif [ "$a1" = "b" ]; then
    echo "basket ball"
elif [ "$a1" = "f" ]; then
    echo "American football"
elif [ "$a1" = "h" ]; then
    echo "hockey"
else
    echo "other"
fi
