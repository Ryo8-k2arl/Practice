#!/bin/env sh

EXCPATH=$HOME/Practice/shellscript/code/Lesson01
read -r a1

#if { [ "$a1" = "y" ] || [ "$a1" = "Y" ]; } && [ -x "$EXCPATH/prg0101.sh" ]; thenが推奨
if [ \( "$a1" = "y"  -o  "$a1" = "Y" \)  -a -x "$EXCPATH/prg0101.sh" ]; then
    echo "OK"
else
    echo "NG"
fi

unset EXCPATH
