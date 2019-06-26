#!/bin/bash

for j in `cat user_list`
do
        echo -e "hadoop\nhadoop" | kadmin.local -q "addprinc $j"
done
