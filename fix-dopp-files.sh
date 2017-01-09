#!/bin/bash


awk '{ALBUM=$0;getline;ARTIST=$0;print ALBUM,ARTIST}' $1
echo $1
echo $2
while read ALBUM && read ARTIST; do echo "$ALBUM      $ARTIST" >> $2; done < $1
