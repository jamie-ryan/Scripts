#!/bin/bash
printf "Enter filename:" & read filename
printf "Enter input filetype (eg, .mov):" & read iext 
printf "Enter output filetype (eg, .mp4):" & read oext
ffmpeg -i "$filename""$iext" -vcodec copy -acodec copy "$filename""$oext"
