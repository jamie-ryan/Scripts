#!/bin/bash

for i in $dir; do
  stat -f "%Sm" -t "%Y-%m-%d %H:%M" "$i"
  echo "$i"
done
