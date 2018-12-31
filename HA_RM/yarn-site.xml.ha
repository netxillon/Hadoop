<?xml version="1.0"?>
<configuration>

<!-- Site specific YARN configuration properties -->

<property>
<name>yarn.nodemanager.aux-services</name>
<value>mapreduce_shuffle,spark_shuffle,spark2_shuffle</value>
</property>

<property>
<name>yarn.nodemanager.aux-services.mapreduce.shuffle.class</name>
<value>org.apache.hadoop.mapred.ShuffleHandler</value>
</property>

<property>
    <name>yarn.nodemanager.aux-services.spark_shuffle.class</name>
    <value>org.apache.spark.network.yarn.YarnShuffleService</value>
</property>

<property>
      <name>yarn.nodemanager.aux-services.spark2_shuffle.class</name>
      <value>org.apache.spark.network.yarn.YarnShuffleService</value>
</property>

# HA Configuration

<!-- RM HA Configurations-->

<property>
 <name>yarn.resourcemanager.ha.enabled</name>
 <value>true</value>
</property>

<property>
 <name>yarn.resourcemanager.cluster-id</name>
 <value>netxillon</value>
</property>

<property>
 <name>yarn.resourcemanager.ha.rm-ids</name>
 <value>rm1,rm2</value>
</property>

<property>
 <name>yarn.resourcemanager.hostname.rm1</name>
 <value>rm1.dilithium.com</value>
</property>

<property>
 <name>yarn.resourcemanager.hostname.rm2</name>
 <value>rm2.dilithium.com</value>
</property>

<property>
 <name>yarn.resourcemanager.webapp.address.rm1</name>
 <value>rm1.dilithium.com:8088</value>
</property>

<property>
 <name>yarn.resourcemanager.webapp.address.rm2</name>
 <value>rm2.dilithium.com:8088</value>
</property>

<property>
 <name>yarn.resourcemanager.recovery.enabled</name>
 <value>true</value>
</property>

<property>
 <name>yarn.resourcemanager.store.class</name>
 <value>org.apache.hadoop.yarn.server.resourcemanager.recovery.ZKRMStateStore</value>
</property>

<property>
 <name>yarn.resourcemanager.zk-address</name>
 <value>nn1.dilithium.com:2181,nn2.dilithium.com:2181,hbm1.dilithium.com:2181</value>
</property>

<property>
 <name>yarn.client.failover-proxy-provider</name>
 <value>org.apache.hadoop.yarn.client.ConfiguredRMFailoverProxyProvider</value>
</property>

<!-- We can set specifics for components of RM

You can also set values for each of the following properties in yarn-site.xml:

yarn.resourcemanager.address.<rm-id>
yarn.resourcemanager.scheduler.address.<rm-id>
yarn.resourcemanager.admin.address.<rm-id>
yarn.resourcemanager.resource-tracker.address.<rm-id>
yarn.resourcemanager.webapp.address.<rm-id>

If these addresses are not explicitly set, each of these properties will use

yarn.resourcemanager.hostname.<rm-id>:default_port
-->
# End HA Configuration

<property>
    <name>yarn.nodemanager.resource.memory-mb</name>
    <value>3072</value>
</property>

<property>
    <name>yarn.scheduler.minimum-allocation-mb</name>
    <value>256</value>
</property>

<property>
    <name>yarn.scheduler.maximum-allocation-mb</name>
    <value>3072</value>
</property>

<property>
    <name>yarn.scheduler.minimum-allocation-vcores</name>
    <value>1</value>
</property>

<property>
    <name>yarn.scheduler.maximum-allocation-vcores</name>
    <value>12</value>
</property>

<property>
    <name>yarn.nodemanager.resource.cpu-vcores</name>
    <value>12</value>
</property>


<property>
<name>yarn.nodemanager.vmem-pmem-ratio</name>
<value>2.1</value>
</property>


<property>
    <name>yarn.log-aggregation-enable</name>
    <value>true</value>
</property>

<property>
    <description>Where to aggregate logs to.</description>
    <name>yarn.nodemanager.remote-app-log-dir</name>
    <value>/tmp/logs</value>
</property>

<property>
    <name>yarn.log-aggregation.retain-seconds</name>
    <value>259200</value>
</property>

<property>
    <name>yarn.log-aggregation.retain-check-interval-seconds</name>
    <value>3600</value>
</property>

</configuration>

