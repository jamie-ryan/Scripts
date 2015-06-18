#!/bin/bash 
clear




printf 'String 1 is the part of the directory name before the variable
number, pls type string 1:'
read str1

printf 'String 2 is the part of the directory name after the variable
number, pls type string 2:'
read str2

str3=$'\documentclass[11pt,a4paper]{report}


\usepackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}

\usepackage{multicol}

\usepackage{amsmath}

\usepackage{graphicx}

\usepackage{epstopdf}
\DeclareGraphicsExtensions{.pdf,.png,.jpg,.eps}



\begin{document}

'

printf 'Input variable increments:'
read value

printf 'Input starting number:'
read s

printf 'Input final number:'
read f


	
cd "$str1""plots""$str2"
                                                                                               
for i in `seq $s $value $f`
  do
    #mkdir ~/Physics/PH700-Project/Pluto-Data/ppm/"$str1"$i"$str2"	
    cd "$str1"$i"$str2"
    #mv *.ppm ~/Physics/PH700-Project/Pluto-Data/ppm/"$str1"$i"$str2"

 
	echo "$str3" >> "$str1"$i"$str2".tex

	shopt -s nullglob
	declare -A array
	array=(*.eps)    
	
	for j in ${array[@]}
	  do

		var=${array[$j]}
		#var=${var#*: }            # Remove everything up to a colon and space
		var=${var%.eps}              # Remove the .eps at the end
		echo "\includegraphics{"$var"}" >> "$str1"$i"$str2".tex
			
	done



echo '

\end{document}

' >> "$str1"$i"$str2".tex





#pdflatex -shell-escape "$str1"$i"$str2".tex 
#pdflatex -shell-escape "$str1"$i"$str2".tex


done	
	
	
	
	
	


	
	
	












