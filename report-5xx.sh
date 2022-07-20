#!/usr/bin/env bash

path="/home/dubrovnyi/LOGS/sep-okt"
files=`ls $path | grep "^unlimint.com" | grep access`
for name in $files
do
  zcat $path/$name | grep "Oct\/2021" | awk -f report-5xx.awk
done
