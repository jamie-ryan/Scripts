
#produce a list of all application startup commands for terminal

sed -nrs '/^\[Desktop Entry\]/d;/^(\[|Name=|Exec=)/p;${g;p}' /usr/share/applications/*.desktop > ~/Desktop/Names-n-Commands.txt
