for f in *.pdf; do convert -density 150 "${f%.*}".pdf -quality 90 "${f%.*}".png; done &

