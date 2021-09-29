#!/usr/bin/env bash

path="/home/dubrovnyi/LOGS/"
files=`ls $path | grep "^unlimint.com" | grep access`
for name in $files
do
  zcat $path/$name | grep "Aug\/2021" | awk -f report.awk
done