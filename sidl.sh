#!/bin/tcsh

setenv SSW_OSPEX /soft/soft2/solarsoft-OSF1/packages/spex/idl/object_spex	
setenv OSPEX_MODELS_DIR $SSW_OSPEX
setenv OSPEX_DOC /soft/soft2/solarsoft-OSF1/packages/spex/doc

setsolar

setssw eis sot hmi aia secchi trace iris hessi gen hxt xray spex 

limit datasize unlimited

limit stacksize unlimited

sswidl


