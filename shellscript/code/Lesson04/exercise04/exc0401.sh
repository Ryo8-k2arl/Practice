#!/bin/env sh

read -r a1

case $a1 in
    s )
        echo "succer"
        ;;
    b )
        echo "basket ball"
        ;;
    f )
        echo "American football"
        ;;
    h )
        echo "hocdkey"
        ;;
    * )
        echo "other"
        ;;
esac
