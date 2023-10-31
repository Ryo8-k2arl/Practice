#!/bin/env sh

read -r a1

case $a1 in
    s|S* )
        echo "succer"
        ;;
    bask* )
        echo "basket ball"
        ;;
    base* )
        echo "baseball"
        ;;
    f|F* )
        echo "American football"
        ;;
    h|H* ) #[hH]も同じ
        echo "hocdkey"
        ;;
    * )
        echo "other"
        ;;
esac
