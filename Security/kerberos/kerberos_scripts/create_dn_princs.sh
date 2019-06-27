#!/bin/bash

# Generate Hosts principals

for i in `cat dn_host_list`
do
	kadmin.local -q "addprinc -randkey host/$i"
	kadmin.local -q "addprinc -randkey HTTP/$i"
	kadmin.local -q "addprinc -randkey hdfs/$i"
	kadmin.local -q "xst -norandkey -k dn.hdfs.keytab host/$i"
	kadmin.local -q "xst -norandkey -k dn.hdfs.keytab HTTP/$i"
	kadmin.local -q "xst -norandkey -k dn.hdfs.keytab hdfs/$i"
done
