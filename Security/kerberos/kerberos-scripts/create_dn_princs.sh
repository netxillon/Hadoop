#!/bin/bash

# Generate Hosts principals

for i in `cat dn_host_list`
do
	kadmin.local -q "addprinc -randkey host/$i"
	kadmin.local -q "addprinc -randkey http/$i"
	kadmin.local -q "addprinc -randkey dn/$i"
	kadmin.local -q "xst -norandkey -k dn.hdfs.keytab host/$i"
	kadmin.local -q "xst -norandkey -k dn.hdfs.keytab http/$i"
	kadmin.local -q "xst -norandkey -k dn.hdfs.keytab dn/$i"
done
