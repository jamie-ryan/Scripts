#Takes duplicates and original values from mutiple files and puts into a new file (tmp.dat)


#this finds all unique and puts in file: 
sort hmi*.dat | uniq  > tmp.dat


#counts lines...good sanity check
grep -c ^ tmp.dat

#this finds all duplicates and puts in file...>> is used to append rather than overwrite the file:
sort hmi*.dat | uniq -d >> tmp.dat

#counts lines...good sanity check
grep -c ^ tmp.dat

mv tmp.dat hmi-all-high-intensity-pixels.dat

