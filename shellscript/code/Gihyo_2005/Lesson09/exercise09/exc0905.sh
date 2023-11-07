#!/bin/env bash

awk '
    BEGIN { print "Hello"; }
    { print $1 ":" $2}
    ( $1 > $2  ) { print "big"; }
    END { print "Good bye"; }
'
