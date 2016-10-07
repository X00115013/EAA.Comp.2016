#!/bin/bash

echo Starting BackUp

FILENAME=backup.tar

SRCDIR=/EAA.Comp.2016/Week1

DESDIR=/EAA.Comp.2016/backup

tar-cpzf$DESDIR/$FILENAME $SRCDIR


echo Finishing BackIp

