nst=0
inc=1
nend="$(ls -1 rhessidata-e-0-t-* | wc -l)" 
#nend="$(ls -1 $1 | wc -l)" 
#for i in `seq 10 1 23`
for i in `seq $nst $inc $nend`
    do
    mkdir t$i
    mv rhessidata-e-*-t-$i-4sigma-pixel-locations.dat t$i
    cd t$i
    sort *.dat | uniq -d >> out.dat
    cd ..
done

