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


		case $parach in
	1 )
	printf 'pls enter P_RATIO ='
	read val2     
	printf 'pls enter MACH ='   
	read val3	
	printf 'pls enter R_JET ='
	read val4    
	printf 'pls enter THETA_R ='
	read val5    
	printf 'pls enter F_PULSE =' 
	read val6  
	printf 'pls enter OM_PULSE ='
	read val7    
	printf 'pls enter F_SHEAR ='
	read val8
	
	;;

	2 )
	printf 'pls enter D_RATIO ='
	read val1  
	printf 'pls enter MACH ='   
	read val3	
	printf 'pls enter R_JET ='
	read val4    
	printf 'pls enter THETA_R ='
	read val5    
	printf 'pls enter F_PULSE =' 
	read val6  
	printf 'pls enter OM_PULSE ='
	read val7    
	printf 'pls enter F_SHEAR ='
	read val8

	;;

	3 )
	printf 'pls enter D_RATIO ='
	read val1   
	printf 'pls enter P_RATIO ='
	read val2    
	printf 'pls enter R_JET ='
	read val4    
	printf 'pls enter THETA_R ='
	read val5    
	printf 'pls enter F_PULSE =' 
	read val6  
	printf 'pls enter OM_PULSE ='
	read val7    
	printf 'pls enter F_SHEAR ='
	read val8

	;;

	4 )
	printf 'pls enter D_RATIO ='
	read val1   
	printf 'pls enter P_RATIO ='
	read val2    
	printf 'pls enter MACH ='   
	read val3
	printf 'pls enter THETA_R ='
	read val5    
	printf 'pls enter F_PULSE =' 
	read val6  
	printf 'pls enter OM_PULSE ='
	read val7    
	printf 'pls enter F_SHEAR ='
	read val8	

	;;	

	5 )
	printf 'pls enter D_RATIO ='
	read val1  
	printf 'pls enter P_RATIO ='
	read val2     
	printf 'pls enter MACH ='   
	read val3	
	printf 'pls enter R_JET ='
	read val4    
	printf 'pls enter F_PULSE ='
	read val6  
	printf 'pls enter OM_PULSE ='
	read val7    
	printf 'pls enter F_SHEAR ='
	read val8
	
	;;	

	6 )
	printf 'pls enter D_RATIO ='
	read val1  
	printf 'pls enter P_RATIO ='
	read val2     
	printf 'pls enter MACH ='   
	read val3	
	printf 'pls enter R_JET ='
	read val4 
	printf 'pls enter THETA_R ='
	read val5    
	printf 'pls enter OM_PULSE ='
	read val7    
	printf 'pls enter F_SHEAR ='
	read val8	
	
	;;	

	7 )
	printf 'pls enter D_RATIO ='
	read val1
	printf 'pls enter P_RATIO ='
	read val2     
	printf 'pls enter MACH ='   
	read val3	
	printf 'pls enter R_JET ='
	read val4    
	printf 'pls enter THETA_R ='
	read val5    
	printf 'pls enter F_PULSE =' 
	read val6  
	printf 'pls enter F_SHEAR ='
	read val8
	
	;;

	8 )
	printf 'pls enter D_RATIO ='
	read val1
	printf 'pls enter P_RATIO ='
	read val2     
	printf 'pls enter MACH ='   
	read val3	
	printf 'pls enter R_JET ='
	read val4    
	printf 'pls enter THETA_R ='
	read val5    
	printf 'pls enter F_PULSE =' 
	read val6      
	printf 'pls enter F_SHEAR ='
	read val7

	;;  

esac
	

                                                                                               
for i in `seq $s $value $f`
  do
	
        mkdir "$str1"$i"$str2"
        cp user-files-2D-Jet/* "$str1"$i"$str2"
	
	
	

	case $parach in
	1 )
	value1=$i
	value2=$val2
	value3=$val3
	value4=$val4
	value5=$val5	
	value6=$val6
	value7=$val7
	value8=$val8
	;;

	2 )
	value2=$i
	value1=$val1
	value3=$val3
	value4=$val4
	value5=$val5	
	value6=$val6
	value7=$val7
	value8=$val8
	;;

	3 )
	value3=$i
	value1=$val1
	value2=$val2
	value4=$val4
	value5=$val5	
	value6=$val6
	value7=$val7
	value8=$val8
	;;

	4 )
	value4=$i
	value1=$val1
	value2=$val2
	value3=$val3
	value5=$val5	
	value6=$val6
	value7=$val7
	value8=$val8
	;;	

	5 )
	value5=$i
	value1=$val1
	value2=$val2
	value3=$val3
	value4=$val4
	value6=$val6
	value7=$val7
	value8=$val8
	;;	

	6 )
	value6=$i
	value1=$val1
	value2=$val2
	value3=$val3
	value4=$val4
	value5=$val5	
	value7=$val7
	value8=$val8
	;;	

	7 )
	value7=$i    
	value1=$val1
	value2=$val2
	value3=$val3
	value4=$val4
	value5=$val5	
	value6=$val6
	value8=$val8
	;;

	8 )
	value8=$i
	value1=$val1
	value2=$val2
	value3=$val3
	value4=$val4
	value5=$val5	
	value6=$val6
	value7=$val7
	;; 


esac


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

	printf "$str3" >"$str1"$i"$str2"/pluto.ini


done	
	
	
	
	
	


	
	
	












