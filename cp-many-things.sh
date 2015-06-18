#!/bin/bash 
clear




printf 'String 1 is the part of the directory name before the variable
number, pls type string 1:'
read str1

printf 'String 2 is the part of the directory name after the variable
number, pls type string 2:'
read str2

printf 'Input variable increments:'
read value

printf 'Input starting number:'
read s

printf 'Input final number:'
read f

mkdir ~/Dropbox/PH700-Plot-Booklets/"$str1""VARIABLE""$str2"	
cd ~/Physics/PH700-Project/Pluto-Data/"$str1""plots""$str2"/
                                                                                               
for i in `seq $s $value $f`
  do
    	
    cd "$str1"$i"$str2"/
    mkdir "$str1"$i"$str2""-booklets"
    cp "$str1"$i"$str2"'.pdf' "$str1"$i"$str2"-booklets
    cp "$str1"$i"$str2"'sync.pdf' "$str1"$i"$str2"-booklets
    cp -r "$str1"$i"$str2"-booklets ~/Dropbox/PH700-Plot-Booklets/"$str1""VARIABLE""$str2"

cd ..
done	
	
	
	
	
	


	
	
	












