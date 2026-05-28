#!/bin/bash

echo "Comando Info de Mi CPU"
lscpu | grep -iE "model name|MHz"

#Cpu Modelo
Model name: AMD Ryzen 5 7520U with Radeon Graphics

#######################################################################################

echo "Comando Info de Memoria Ram"
Free -h

#Memoria Ram
total        used        free      shared  buff/cache   available
Mem:        1.9Gi       177Mi       1.4Gi       0.0Ki       314Mi       1.6Gi
