#!/bin/bash
 
read currterm currfile currnum
while read term file num; do
  if [[ $term = "$currterm" ]] && [[ $file = "$currfile" ]]; then
    currnum=$(( currnum + num ))
  else
    printf "%s\t%s\t%s\n" "$currterm" "$currfile" "$currnum"
    currterm="$term"
    currfile="$file"
    currnum="$num"
  fi
done
printf "%s\t%s\t%s\n" "$currterm" "$currfile" "$currnum"