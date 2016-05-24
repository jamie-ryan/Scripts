#!/bin/bash

for i in rhessidata[0-x-y-*.dat
    do
        for f in rhessidata[*-x-y-$i]*.dat
            do sort $f | uniq -d >> rhessidata-pix-match-at-time-$i.dat
    done
done

