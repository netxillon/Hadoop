Important Points before starrting with Security:
===============================================
1. Ensure NTP is working and all nodes are in sync.
2. Ensure every system has the right entropy. Atleast 1000; refer to installation of rng under the kerberos install script.
   - This will ensure faster cryptography for keys, principals etc
3. For Kerberos make sure Java is patched with Unrestricted key length.
4. If not using SASL for Datanodes, ensure JSVC_HOME is set to the binary.

This is very vast topic and lots of things to talk about:

- The integrations can be with AD, FreeIPA, OpenLdap, Kerberos.
- SIEM or RIHNO etc

For any specific needs, please contact me at trainings@netxillon.com
