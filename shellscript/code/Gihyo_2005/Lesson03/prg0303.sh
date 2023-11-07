#!/bin/bash

EXCPATH=./shellscript/code/Lesson01

read -r a1
if [ "$a1" = "y" ] && [ -x "$EXCPATH/prg0101.sh" ]; then
    "$EXCPATH/prg0101.sh"

else
    echo "No"
fi

read -r a2
if test "$a2" = "y" -a -x "$EXCPATH/prg0101.sh" ; then
    "$EXCPATH/prg0101.sh"
else
    echo "No"
fi

unset EXCPATH

#Textは以下のようになっている
# -a で「かつ」を表すが、今はp -a qではなく、[p] && [q]とあらわす
#ディレクトリが異なる場合は""でくくるほうがいいかも（ミスが減る）
#read a1
#if [ $a1 = "y" -a -x $EXCPATH/prg0101.sh ]
#    then $EXCPATH/prg0101.sh
#
#else
#    echo "No"
#fi
