#!/bin/bash

yum clean all
yum install -y krb5-server krb5-workstation krb5-devel pam_krb5
