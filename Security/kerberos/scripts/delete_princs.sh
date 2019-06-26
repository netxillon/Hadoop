#!/bin/bash

source list_princs.sh | egrep "host|nn|http|dn|mapred|jt|tt" > delete_list

for i in `cat delete_list`
do 
	kadmin.local -q "delprinc -force $i"
done
