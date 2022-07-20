#!/usr/bin/env bash

path="/home/dubrovniy/Projects/Study/Bash/unlimint-report"
file="kza.log"
# files=`ls $path | grep "^unlimint.com" | grep access`
# for name in $files
# do
#   zcat $path/$name | grep "Oct\/2021" | awk -f report.awk
# done

cat $path/$file | grep "HTTP/1.1\" 500" | awk -f report.awk