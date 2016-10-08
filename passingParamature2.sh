#!/bin/bash


SRCDIR=/Week2

DESTDIR=/backup

FILENAME=backUp-$(date +%-Y%-m%-d)-$(date +%-T).tar

tar –cf$DESTDIR$FILENAME $SRCDIR
echo "finished"
