#!/bin/env bash

EXCPATH=./shellscript/code/Lesson10

sort $EXCPATH/dat1005 | uniq -d
echo "-----"
sort $EXCPATH/dat1005 | uniq -u
