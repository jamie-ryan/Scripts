#!/bin/bash
for f in *; do ps2pdf "${f%.*}".ps "${f%.*}".pdf; done
