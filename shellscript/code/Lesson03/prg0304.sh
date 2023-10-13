#!/bin/bash
read -r a1
if [ "$a1" = "y" ]; then
    if [ -x "$HOME/Practice/shellscript/code/Lesson01/prg0101.sh" ]; then
        "$HOME/Practice/shellscript/code/Lesson01/prg0101.sh"
    else
        echo "No"
    fi
else
    echo "Not y"
fi
