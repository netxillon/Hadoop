#!/bin/bash

yum clean all
yum install -y krb5-server krb5-workstation krb5-devel pam_krb5 krb5-libs

yum install rng-tools -y

echo 'EXTRAOPTIONS="-r /dev/urandom"'' > /etc/sysconfig/rngd
service rngd restart
yum install ntp -y

chkconfig ntpd on
chkconfig rngd on
