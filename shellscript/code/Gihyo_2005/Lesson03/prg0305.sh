#!/bin/bash

read -r a1
if [ "$a1" = "y" ]; then
    echo "Yes"
elif [ "$a1" = "n" ]; then
    echo "No"
else
    echo "Other"
fi
