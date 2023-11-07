#!/bin/bash

read -r a1
if [ "$a1" = "y" ] || [ "$a1" = "Y" ] ; then
    echo "OK"
else
    echo "NG"
fi
