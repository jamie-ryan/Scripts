#!/bin/bash
clear
printf 'Git Commit String:'
read str1


git add *
git commit -m '$str1'
git push origin master
