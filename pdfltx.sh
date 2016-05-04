#!/bin/bash
#First Argument: $1
#Second Argument: $2
#Third Argument: $3 

pdflatex "$1".tex
bibtex "$1".aux
pdflatex "$1".tex
pdflatex "$1".tex
evince "$1".pdf &
