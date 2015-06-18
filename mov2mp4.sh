#!/bin/bash
printf "Enter filename:" & read filename
ffmpeg -i "$filename"".mov" -vcodec copy -acodec copy "$filename"".mp4"
