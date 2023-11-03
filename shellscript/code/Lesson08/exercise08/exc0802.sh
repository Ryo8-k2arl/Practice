#!/bin/env bash

show_argument() {
    echo "$1"
}

while [ "$1" != "n" ]; do
    echo "$1"
    shift
done
