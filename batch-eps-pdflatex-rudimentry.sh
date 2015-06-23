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

	
cd "$str1""plots""$str2"/
                                                                                               
for i in `seq $s $value $f`
  do
    #mkdir ~/Physics/PH700-Project/Pluto-Data/ppm/"$str1"$i"$str2"	
    cd "$str1"$i"$str2"/
    #mv *.ppm ~/Physics/PH700-Project/Pluto-Data/ppm/"$str1"$i"$str2"

 	#str3=$
echo "%Defining the type and structure of the document
\documentclass[11pt,a4paper]{report}

%Sets up margins
\usepackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
%package to set up column style page layout
\usepackage{multicol}
%calls a maths package for writing equations
\usepackage{amsmath}
%package allows the inclusion of graphics files (.eps,.jpeg....etc)
\usepackage{graphicx}
%converts eps to pdf
\usepackage{epstopdf}
\DeclareGraphicsExtensions{.pdf,.png,.jpg,.eps}
\begin{document} 
\includegraphics{abp2e001} 
\includegraphics{abp2e002}
\includegraphics{abp2e003}
\includegraphics{abp2e004}
\includegraphics{abp2e005}
\includegraphics{abp2e006}
\includegraphics{abp2e007}
\includegraphics{abp2e008}
\includegraphics{abp2e009}
\includegraphics{abp2e010}
\includegraphics{abp2e011}
\includegraphics{abp2e012}
\includegraphics{abp2e013}
\includegraphics{abp2e014}
\includegraphics{abp2e015}
\includegraphics{abp2e016}
\includegraphics{abp2e017}
\includegraphics{abp2e018}    
\includegraphics{abp2e019}    
\includegraphics{abp2e020}    
\includegraphics{abp2e021}    
\includegraphics{abp2e022}    
\includegraphics{abp2e023}    
\includegraphics{abp2e024}    
\includegraphics{abp2e025}  
\includegraphics{abp2e026}  
\includegraphics{abp2e027}  
\includegraphics{abp2e028}  
\includegraphics{abp2e029}  
\includegraphics{abp2e030}  
\includegraphics{abp2e031}  
\includegraphics{abp2e032}  
\includegraphics{abp2e033}  
\includegraphics{abp2e034}  
\includegraphics{abp2e035}
\includegraphics{abp2e036}
\includegraphics{abp2e037}
\includegraphics{abp2e038}
\includegraphics{abp2e039}
\includegraphics{abp2e040}
\end{document}" > "$str1"$i"$str2".tex
	#printf "$str3" > "$str1"$i"$str2".tex
			
	

pdflatex -shell-escape "$str1"$i"$str2".tex 
pdflatex -shell-escape "$str1"$i"$str2".tex

cd ..
done	
	
	
	
	
	


	
	
	












