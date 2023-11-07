#!/bin/bash

EXCPATH=./shellscript/code/Lesson01


read -r a1
if [ "$a1" = "y" ]; then
    if [ -x "$EXCPATH/prg0101.sh" ]; then
        "$EXCPATH/prg0101.sh"
    else
        echo "No"
    fi
else
    echo "Not y"
fi

unset EXCPATH
