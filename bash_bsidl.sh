#!/bin/bash

#nohup ~/Documents/ssw < test.pro
nohup ~/Documents/ssw < $1 > $2 &
#nohup ~/Documents/ssw < $1 >> $2 2>&1 &
