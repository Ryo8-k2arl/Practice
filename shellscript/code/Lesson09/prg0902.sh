#!/bin/env bash

awk '
/prg/ { print "program"; }
'
