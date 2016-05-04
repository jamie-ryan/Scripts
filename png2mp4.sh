#!/bin/bash 



#here is the online guide
#https://trac.ffmpeg.org/wiki/Create%20a%20video%20slideshow%20from%20images

#this works, each image shows for quarter of a second. Filename eg SJI_1400_1.png, SJI_1400_2.png  etc
#ffmpeg -framerate 1/0.05 -start_number 27 -i HMI_Cont_RHESSI_Hmap50_Contours_%02d.png -c:v libx264 -r 30 -pix_fmt yuv420p HMI_Cont_z.mp4

#ffmpeg -framerate 1/$frate -start_number $fstart -i "$fstr"%02d.png -c:v libx264 -r 30 -pix_fmt yuv420p "$fstr".mp4

#
echo "Starting frame"
read fstart

#0.05 is good so start there
echo "Frame rate"
read frate
#frate=0.05
#presuming BLAH_BLAH_01.png the -6 below grabs whatever is before '01.png' 
for f in *01.png; do
fstr=${f::-6}
/home/jim/bin/ffmpeg -framerate 1/$frate -i "$fstr"%02d.png -c:v libx264 -r 30 -pix_fmt yuv420p "${fstr::-1}".mp4
#ffmpg -framerate 1/$frate -i "$fstr"%02d.png -c:v libx264 -r 30 -pix_fmt yuv420p "${fstr::-1}".mp4
done
