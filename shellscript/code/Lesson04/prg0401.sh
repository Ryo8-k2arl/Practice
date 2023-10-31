#!/bin/env sh

read -r a1
case $a1 in
    yes )
        echo "OK"
        ;;
    no )
        echo "NG"
        ;;
    * )
        echo "Unknown"
        ;;
esac

