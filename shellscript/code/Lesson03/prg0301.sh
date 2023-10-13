#!/bin/bash
read -r a1
if [ "$a1" = "y" ]; then
    echo "Yes"
fi

read -r a2
if test "$a2" = "z"; then
    echo "Zes"
fi

#Textは以下。これはレガシーらしい。
#メモリリークを防ぐために変数は「""」
#readはrあぷしょんをつけるのが普通らしい
#read a1
#if [ $a1 = "y" ]
#    then echo "Yes"
#fi
