#!/bin/env sh

read -r a1
case $a1 in
    y* )
        echo "OK"
        ;;
    no|No|NO )
        echo "NG"
        ;;
    [a-zA-Z]* )
        echo "Alphabet"
        ;;
    [0-9]* )
        echo "Numeric"
        ;;
esac
