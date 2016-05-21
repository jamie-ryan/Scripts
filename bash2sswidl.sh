#!/bin/csh

setenv SSW_OSPEX /soft/soft2/solarsoft-OSF1/packages/spex/idl/object_spex	
setenv OSPEX_MODELS_DIR $SSW_OSPEX
setenv OSPEX_DOC /soft/soft2/solarsoft-OSF1/packages/spex/doc

setsolar

setssw eis sot hmi aia secchi trace iris hessi gen hxt xray spex 

limit datasize unlimited

limit stacksize unlimited

set e1=10.
set e2=100.
set inc=10.
set hrst=17
set mnst=40
set scst=0
set hre=17
set mne=54
set sce=0
set tim=20.
set algo="PIXON"

#rhessi_img, energy_range = [10.,100.], 10., 17, 40, 0, 17, 54, 0, 20., 'PIXON'
sswidl -e "bash2idl" -args $e1 $e2 $inc $hrst $mnst $scst $hre $mne $sce $tim $algo


