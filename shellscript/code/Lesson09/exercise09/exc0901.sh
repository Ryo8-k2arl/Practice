#!/bin/env bash

read -r a1
echo "$a1" | sed 's/aaa/xxxx/'
echo "$a1" | sed 's/aaa/xxxx/g'
