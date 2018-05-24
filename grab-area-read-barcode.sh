#!/bin/bash

DIR="$HOME/Screenshots"
FILENAME=$DIR/$(date +%Y%m%d-%H%M%S).png

if [ ! -d $DIR ]
then
  mkdir -pv $DIR
fi

touch $FILENAME

scrot -b -s $FILENAME
zbarimg $FILENAME > /tmp/barcode.txt

if [ $? = 0 ]
then
  BARCODE=$(cat /tmp/barcode.txt | cut -d: -f2)
  echo $BARCODE | xclip -selection c
else
  snd_error
fi
