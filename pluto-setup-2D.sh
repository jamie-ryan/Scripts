#!/bin/bash 

#********************Programme pluto-sim-setup****************************
#Author: J.Ryan
#Date:17/11/2013
#
#Function: 1.Makes directories for pluto simulations and fills them with the 
#	   relevent simulation setup files.
#	   2.Ammends a pluto.ini file to contain a directory specific variable 
#	   change, then puts that file in the corresponding directory
#
#Purpose: To save time on the menial tasks of making directories and moving files  
#also this script could be doctored and used in all sorts of situations. 
clear


#User input, defining which variable will be the subject of the directory numbering
#system.
printf '[Parameters]

1) D_RATIO    
2) P_RATIO    
3) MACH    
4) R_JET    
5) THETA_R    
6) F_PULSE    
7) OM_PULSE    
8) F_SHEAR


Choose a parameter to change by picking a number from 1 to 8:

'   
 
read parach

#this string convention, of before and after the varible, is not set in stone
#I had already made a couple in this format and was too stubborn to change them :)

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


export str1, str2, value, s, f

#value1=0.1  
#value2=1.0
#value3=6.0
#value4=1.0
#value5=0.
#value6=0.
#value7=0.
#value8=0.


#main loop                                                                                                  
for i in `seq $s $value $f`
  do
	#make directories and copy in pluto setup files
        mkdir "$str1"$i"$str2"
        cp user-files-2D-Jet/* "$str1"$i"$str2"
	
	
	
	
	#case select to setup variable values to be placed in pluto.ini 
	#[Parameters]
	#1)=change D_RATIO    
	#2)=change P_RATIO    
	#3)=change MACH    
	#4)=change R_JET    
	#5)=change THETA_R    
	#6)=change F_PULSE    
	#7)=change OM_PULSE    
	#8)=change F_SHEAR

	case $parach in
	1 )
	value1=$i
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=0.
	
	;;
	2 )
	value1=0.1  
	value2=$i
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=0.	
	
	;;
	3 )
	value1=0.1  
	value2=1.0
	value3=$i
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=0.	
	
	;;
	4 )
	value1=0.1  
	value2=1.0
	value3=6.0
	value4=$i
	value5=0.
	value6=0.
	value7=0.
	value8=0.	
	
	;;	
	5 )
	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	value5=$i
	value6=0.
	value7=0.
	value8=0	
	
	;;	
	6 )
	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=$i
	value7=0.
	value8=0.	
	
	;;	
	7 )
	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=$i
	value8=0.	
	
	;;
	8 )
	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=$i

	;; 

#ends select case
esac

#string (including spaces and line breaks) to be placed in pluto.ini
str3=$'[Grid]
	
X1-grid    2    0.0    100    u    5.0      25    s    15.0
X2-grid    2    0.0    200    u    10.0    50    s    30.0
X3-grid    1    0.0    1    u    1.0

[Chombo Refinement]
 
Levels           4
Ref_ratio        2 2 2 2 2
Regrid_interval  2 2 2 2
Refine_thresh    0.3
Tag_buffer_size  3
Block_factor     4
Max_grid_size    32
Fill_ratio       0.75
 
[Time]

CFL              0.4
CFL_max_var    1.1
tstop            10.
first_dt         1.e-6

[Solver]

Solver         hllc

[Boundary]

X1-beg        reflective
X1-end        outflow
X2-beg        userdef
X2-end        outflow
X3-beg        outflow
X3-end        outflow

[Uniform Grid Output]

uservar    0
dbl        0.25  -1   single_file
flt       -1.0  -1   single_file
vtk       -1.0  -1   single_file
tab       -1.0  -1   
png       -1.0  -1   
ppm       0.25  -1   
log         1.0 
analysis  -1.0  -1 
 
[Chombo HDF5 output]
 
Checkpoint_interval  -1.0  0
Plot_interval         1.0  0
 
[Parameters]

D_RATIO    '$value1'  
P_RATIO    '$value2'
MACH    '$value3'
R_JET    '$value4'
THETA_R    '$value5'
F_PULSE    '$value6'
OM_PULSE    '$value7'
F_SHEAR    '$value8
#$value# variables are established in the case select as a result of user input	

	#puts the string above into the empty file pluto.ini
	#and places it into the correct directory
	printf "$str3" >"$str1"$i"$str2"/pluto.ini

#	cd "$str1"$i"$str2"
#	./pluto
		
	
#end main loop	
done	
	
	
	
	
	


	
	
	












