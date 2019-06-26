#!/bin/bash

for k in `cat nn_host_list`
do
	echo "$k"
	kadmin.local -q "addprinc -randkey host/$k"
        kadmin.local -q "addprinc -randkey http/$k"
        kadmin.local -q "addprinc -randkey nn/$k"

        kadmin.local -q "xst -norandkey -k nn.hdfs.keytab host/$k"
        kadmin.local -q "xst -norandkey -k nn.hdfs.keytab http/$k"
        kadmin.local -q "xst -norandkey -k nn.hdfs.keytab nn/$k"
        kadmin.local -q "xst -norandkey -k dn.hdfs.keytab host/$k"
        kadmin.local -q "xst -norandkey -k dn.hdfs.keytab http/$k"
        kadmin.local -q "xst -norandkey -k dn.hdfs.keytab nn/$k"
done
