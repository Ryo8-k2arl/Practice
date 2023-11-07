#!/bin/env bash

read -r a1
echo "$a1" | sed -e 's/\///g'
