#!/bin/bash

echo "Info de Mi CPU"
lscpu | grep -iE "model name|MHz"

echo "Info de Memoria Ram"
free -h
