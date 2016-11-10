#!/bin/bash

#ps aux | grep jsr2 shows all processes 
#can then get access to files on local machine using ssh://jsr2@localhost:2222
if [[ $(ps aux | grep ssh | grep gate ) ]] 
then 
#    ssh -f jsr2@gate.mssl.ucl.ac.uk -L 8080:msslex:22 -N
    ssh jsr2@gate.mssl.ucl.ac.uk -L 8080:msslex:22 -N
fi
#ssh -p 8080 -YC jsr2@localhost
ssh -p 8080 jsr2@localhost
