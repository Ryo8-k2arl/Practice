#!/bin/env sh

until [ "$1" = "n" ]; do
    echo "$1"
    shift
done
