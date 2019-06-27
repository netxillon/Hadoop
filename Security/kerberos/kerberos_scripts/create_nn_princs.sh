#!/bin/bash

for k in `cat nn_host_list`
do
	kadmin.local -q "addprinc -randkey host/$k"
        kadmin.local -q "addprinc -randkey HTTP/$k"
        kadmin.local -q "addprinc -randkey hdfs/$k"

        kadmin.local -q "xst -norandkey -k nn.hdfs.keytab host/$k"
        kadmin.local -q "xst -norandkey -k nn.hdfs.keytab HTTP/$k"
        kadmin.local -q "xst -norandkey -k nn.hdfs.keytab hdfs/$k"
done
