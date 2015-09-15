#!/bin/bash 
clear


for i in `seq 8273 1 8372`
  do
	convert -resize 2010x1335 "JIM_""$i"".png" "JIM_""$i""_SML.png"

done
