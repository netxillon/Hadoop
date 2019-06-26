#!/bin/bash

for k in `cat user_host_list`
do
        kadmin.local -q "xst -norandkey -k user.hdfs.keytab host/$k"
done

for p in `cat user_list`
do
        kadmin.local -q "xst -norandkey -k user.hdfs.keytab $p"
done
