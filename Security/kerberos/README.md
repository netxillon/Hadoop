In production remove legacy encryption algo's and use only:

    default_tkt_enctypes = aes256-cts-hmac-sha1-96 aes128-cts-hmac-sha1-96
    default_tgs_enctypes = aes256-cts-hmac-sha1-96 aes128-cts-hmac-sha1-96
    permitted_enctypes = aes256-cts-hmac-sha1-96 aes128-cts-hmac-sha1-96


Debugging:

$ export HADOOP_ROOT_LOGGER=TRACE,console; export HADOOP_JAAS_DEBUG=true; export HADOOP_OPTS="-Dsun.security.krb5.debug=true"

$ hadoop fs -ls / > >(tee fsls-logfile.txt) 2>&1

$ export KRB5_TRACE=/tmp/kinit.log
