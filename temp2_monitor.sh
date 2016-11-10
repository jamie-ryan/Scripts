#!/bin/bash


while true; do echo $( date '+%H:%M:%S' ), $( sensors | grep 'temp2' | sed -r 's/^.* {8}\+(.*)°C .*$/\1/' ) >> temp2.txt; sleep 1; done

