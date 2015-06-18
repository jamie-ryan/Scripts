#!/bin/bash
clear
printf 'Enter video file name, not including extension:' & read mov
printf 'Enter file extension (eg, .mpg):' & read ext
printf 'Enter frame rate to convert to:' & read rate
printf 'Enter video resolution (eg, 1920×1080):' & read size


ffmpeg -i "$mov""$ext" -f rawvideo -b 50000000 -pix_fmt yuv420p -vcodec rawvideo -s "$size" -y pipe:1 | ffmpeg -f rawvideo -b 50000000 -pix_fmt yuv420p -r "$rate" -s "$size" -i – "$mov""out""$ext" 
