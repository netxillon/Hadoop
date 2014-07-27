[training@localhost steve]$ cat maptf.sh
#!/bin/bash
 
exclude="\.\,?!\-_:;\]\[\#\|\$()\""
while read split; do
for word in $split; do
   term=`echo "${word//[$exclude]/}" | tr [:upper:] [:lower:]`
   if [ -n "$term" ]; then
     printf "%s\t%s\t%s\n" "$term" "$map_input_file" "1"
   fi
done
done