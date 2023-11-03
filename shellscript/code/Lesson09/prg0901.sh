#!/bin/env bash

read -r a1

echo "$a1" | sed 's/abc/xyz/'

echo "$a1" | sed 's/abc/xyz/g'
echo "${a1//abc/xyz}"
