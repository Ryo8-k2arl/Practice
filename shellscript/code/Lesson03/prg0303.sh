#!/bin/bash

read -r a1
if [ "$a1" = "y" ] && [ -x "../Lesson01/prg0101.sh" ]; then
    "../Lesson01/prg0101.sh"

else
    echo "No"
fi

#Textは以下のようになっている
# -a で「かつ」を表すが、今はp -a qではなく、[p] && [q]とあらわす
#ディレクトリが異なる場合は""でくくるほうがいいかも（ミスが減る）
#read a1
#if [ $a1 = "y" -a -x ../Lesson01/prg0101.sh ]
#    then ../Lesson01/prg0101.sh
#
#else
#    echo "No"
#fi
