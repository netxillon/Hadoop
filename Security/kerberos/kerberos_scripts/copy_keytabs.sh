#!/bin/bash

clush -g all --copy nn.hdfs.keytab --dest=/opt/cluster/security/
clush -g all --copy dn.hdfs.keytab --dest=/opt/cluster/security/
clush -g all --copy user.hdfs.keytab --dest=/opt/cluster/security/
clush -g all -b "chown -R hdfs:hadoop /opt/cluster/"
