#!/bin/env bash

awk '
    { print $1 ":" $2}
    ( $1 > $2  ) { print "big"; }
'
