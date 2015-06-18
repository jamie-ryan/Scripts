#Programme to batch copy setup files into newly made 


clear


echo 'String 1 is the part of the directory name before the variable number, pls type string 1:'
read str1
echo 'String 2 is the part of the directory name after the variable number, pls type string 2:'
read str2
echo 'Input variable increments:'
read n
echo 'Input starting number:'
read s
echo 'Input final number:'
read f



for i in `seq $s $n $f` 
  do			
	cp user-files-2D-Jet/* "$str1"$i"$str2"
					
done


#for i in {s..f..n}
#  do
#     echo "Welcome $i times"
# done

