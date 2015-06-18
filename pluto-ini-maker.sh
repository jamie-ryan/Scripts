



printf '[Parameters]

1) D_RATIO    
2) P_RATIO    
3) MACH    
4) R_JET    
5) THETA_R    
6) F_PULSE    
7) OM_PULSE    
8) F_SHEAR

'
printf '1) Enter value for D_RATIO (default=0.1) '
read value1
printf '2) Enter value for P_RATIO (default=1.0) '
read value2
printf '3) Enter value for MACH (default=6.0) '
read value3
printf '4) Enter value for R_JET (default=1.0) '
read value4
printf '5) Enter value for THETA_R (default=0) '
read value5
printf '6) Enter value for F_PULSE (default=0) '
read value6
printf '7) Enter value for OM_PULSE (default=0) '
read value7
printf '8) Enter value for F_SHEAR (default=0) '
read value8




#value1=0.1  
#value2=1.0
#value3=6.0
#value4=1.0
#value5=0.
#value6=0.
#value7=0.
#value8=0.




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

printf "$str3" >pluto.ini


#echo "insert text here" > init.c
#echo "insert text here" > pluto.ini




