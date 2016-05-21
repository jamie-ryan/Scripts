for f in *.pdf; do convert -density 150 "${f%.*}".pdf -quality 99 "${f%.*}".png; done &

