#!/bin/bash


while true; do echo $( date '+%H:%M:%S' ), $( sensors | grep 'temp1' | sed -r 's/^.* {8}\+(.*)°C .*$/\1/' ) >> temp1.txt; sleep 1; done

