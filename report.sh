#!/usr/bin/env bash

path="/home/dubrovnyi/LOGS/"
files=`ls $path | grep "^unlimint.com" | grep access | grep 202108`
for name in $files
do
  zcat $path/$name | awk -f report.awk
done