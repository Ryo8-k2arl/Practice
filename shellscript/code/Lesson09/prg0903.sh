#!/bin/env bash

awk '
    BEGIN { print "hello"; }
    { print $1; }
    ($1 > 10) { print "big"; }
    END { print "bye"; }
'
