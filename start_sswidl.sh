#!/bin/tcsh

source /home/solarsw/solarsw_setup
setssw eis sot hmi aia secchi trace iris hessi gen hxt xray
limit datasize unlimited
limit stacksize unlimited
sswidl
