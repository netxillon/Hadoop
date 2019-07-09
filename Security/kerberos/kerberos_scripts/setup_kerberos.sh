#!/bin/bash

# Note: Kerberos Realm does not need to be same as domain name. Just update [domain_realm] section mapping correctly.
echo -e "redhat\nredhat" | kdb5_util create -r NETXILLON.COM -s

echo -e "redhat\nredhat" | kadmin.local -q "addprinc root/admin"

kadmin.local -q "ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/admin"
kadmin.local -q "ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/changepw"

/etc/init.d/kadmin restart
/etc/init.d/krb5kdc restart

chkconfig krb5kdc on
chkconfig kadmin on
