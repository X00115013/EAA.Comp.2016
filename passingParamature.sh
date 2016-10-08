#!/bin/bash

echo Script Name: "$0"

echo Total Number of Argument Passed: "$#"

echo 1. $1

echo 2. $2

echo All Arguments are: "$*"

echo Starting BackUp

TIME=$(date +"%m-%d-%Y")

FILENAME=$(backUp-$TIME.tar)

SRCDIR=/$1

DESDIR=$2

tar-cvpzf/$DESDIR/$FILENAME $SRCDIR


echo Finishing BackUp
