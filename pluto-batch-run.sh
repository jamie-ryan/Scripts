#!/bin/bash 

#********************Programme pluto-sim-setup****************************
#Author: J.Ryan
#Date:17/11/2013
#
#Function: Runs a batch of pluto simulations. variables used in this script 
#are obtained from the last run of pluto-setup-*.sh
#
#Purpose: To save time on the menial tasks of going into directories and 
#running sims manually also this script could be doctored and used in all 
#sorts of situations. 


                                                                                                 
for i in `seq $s $value $f`
  do
        cd "$str1"$i"$str2"
        ./pluto
	cd ..	
	
	
done	
	
	
	
	
	


	
	
	












