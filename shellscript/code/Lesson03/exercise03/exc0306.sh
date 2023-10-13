#!/bin/sh

EXCPATH=$HOME/Practice/shellscript/code/Lesson01

read -r a1
if [ "$a1" = "y" ] || [ "$a1" = "Y" ]; then
    if [ -x "$EXCPATH/prg0101.sh" ]; then
        echo "OK"
    else
        echo "NG"
    fi
else
    echo "Not y"
fi

unset EXCPATH
