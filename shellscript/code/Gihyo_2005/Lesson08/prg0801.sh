#!/bin/env bash

f_Hello() {
    echo "Hello World!!I am $(whoami)"
    printf 'HelloWorld\nI am %s\n' "$(whoami)"
}

f_Hello
