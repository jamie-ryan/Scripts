#Programme to make a file and fill it with text
#!/bin/bash 

clear

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

#value1=0.1  
#value2=1.0
#value3=6.0
#value4=1.0
#value5=0.
#value6=0.
#value7=0.
#value8=0.
                                                                                                 
for i in `seq $s $value $f`
  do
        mkdir "$str1"$i"$str2"
        cp user-files-2D-Jet/* "$str1"$i"$str2"
	
	
	
	
	#select para1 in $parach; do 
	if $parach = 1 then
	str="D_RATIO"
	disc="value must be between 0.1 and 1"
	value1=$value*$i
	
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=0.

	#else 
	
	if $parach = 2 then
	str='P_RATIO'
	disc='value must be between 0.1 and 1'
	value2=$value*$i

	value1=0.1  
	#value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=0.	
	
	#else
	
	if $parach = 3 then
	str='MACH'
	disc='value must be between 1.5 and 6'
	value3=$value*$i

	
	value1=0.1  
	value2=1.0
	#value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=0.	
	
	#else
	
	if $parach = 4 then
	str='R_JET'
	disc='value must be between ? and ?'
	value4=$value*$i


	value1=0.1  
	value2=1.0
	value3=6.0
	#value4=1.0
	value5=0.
	value6=0.
	value7=0.
	value8=0.	
	
	#else
	
	if $parach = 5 then
	str='THETA_R'
	disc='value must be between 0 and 45'
	value5=$value*$i


	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	#value5=0.
	value6=0.
	value7=0.
	value8=0.	
	
	#else
	
	if $parach = 6 then
	str='F_PULSE'
	disc='value must be between ? and ?'
	value6=$value*$i


	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	#value6=0.
	value7=0.
	value8=0.	
	
	#else
	
	if $parach = 7 then
	str='OM_PULSE'
	disc='value must be between ? and ?'
	value7=$value*$i


	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	#value7=0.
	value8=0.	
	
	#else

	if $parach = 8 then
	str='F_SHEAR'
	disc='value must be between ? and ?'
	value8=$value*$i


	value1=0.1  
	value2=1.0
	value3=6.0
	value4=1.0
	value5=0.
	value6=0.
	value7=0.
	#value8=0.

	#else 

	#exit


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

D_RATIO    '"$value1"'  
P_RATIO    '"$value2"'
MACH    '"$value3"'
R_JET    '"$value4"'
THETA_R    '"$value5"'
F_PULSE    '"$value6"'
OM_PULSE    '"$value7"'
F_SHEAR    '"$value8"''
           
	cd "$str1"$i"$str2"
	printf "$str3" >pluto.ini

	
		
	
	fi
done	
	
	
	
	
	


	
	
	












