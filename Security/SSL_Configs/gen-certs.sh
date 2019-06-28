#!/bin/bash

TRUSTSTORE_KEY=truststore.jks
KEYSTORE_KEY=keystore.jks
PRIV_KEY_PASSWORD=password
SERVER_KEYSTORE_PASSWORD=password
SERVER_TRUSTSTORE_PASSWORD=password

for i in $(cat hosts)
do
 #echo `echo $i | awk -F. '{ print $1 }'`

 mkdir -p `echo $i | awk -F. '{ print $1 }'`

 keytool -genkey -alias `echo $i | awk -F. '{ print $1 }'` -keyalg RSA -dname "CN=${i},OU=Netxillon Technologies,O=Netxillon Technologies,L=Melbourne,ST=Victoria,C=AU" -keypass "$PRIV_KEY_PASSWORD" -keystore `echo $i | awk -F. '{ print $1 }'`/$KEYSTORE_KEY -storepass "$SERVER_KEYSTORE_PASSWORD"

 keytool -certreq -alias `echo $i | awk -F. '{ print $1 }'` -keyalg RSA -file `echo $i | awk -F. '{ print $1 }'`/`echo $i | awk -F. '{ print $1 }'`.csr -keystore `echo $i | awk -F. '{ print $1 }'`/$KEYSTORE_KEY -storepass "$SERVER_KEYSTORE_PASSWORD"

 openssl ca -batch -passin pass:redhat -in `echo $i | awk -F. '{ print $1 }'`/`echo $i | awk -F. '{ print $1 }'`.csr -out `echo $i | awk -F. '{ print $1 }'`/`echo $i | awk -F. '{ print $1 }'`.crt

 keytool -import -keystore `echo $i | awk -F. '{ print $1 }'`/$KEYSTORE_KEY -file CA.crt -alias CARoot -storepass "$SERVER_KEYSTORE_PASSWORD" -noprompt

 keytool -import -keystore `echo $i | awk -F. '{ print $1 }'`/$KEYSTORE_KEY -file `echo $i | awk -F. '{ print $1 }'`/`echo $i | awk -F. '{ print $1 }'`.crt -alias `echo $i | awk -F. '{ print $1 }'` -keypass "$SERVER_KEYSTORE_PASSWORD" -storepass "$SERVER_KEYSTORE_PASSWORD" -noprompt

 keytool -importcert -keystore `echo $i | awk -F. '{ print $1 }'`/${TRUSTSTORE_KEY} -file CA.crt -alias CARoot -storepass "$SERVER_TRUSTSTORE_PASSWORD" -noprompt

done

