#!/bin/env bash

while [ $# -gt 0 ] && [ -r "$1" ]; do
    cat "$1" >> temp
    shift
done

#`$#`は引数の数が0より大きいか
# -rは読み込み可能か
