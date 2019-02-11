# Create this file as it is not part of the distro

#!/bin/bash

# Set KAFKA specific environment variables here.

# The java implementation to use.
export JAVA_HOME=/usr/java/default
export PATH=$PATH:$JAVA_HOME/bin
#export PID_DIR={{kafka_pid_dir}}
#export LOG_DIR={{kafka_log_dir}}
#export JMX_PORT=9093

export KAFKA_HEAP_OPTS="-Xmx1g -Xms1g"
export KAFKA_JVM_PERFORMANCE_OPTS="-XX:MetaspaceSize=96m -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35 -XX:G1HeapRegionSize=16M -XX:MinMetaspaceFreeRatio=50 -XX:MaxMetaspaceFreeRatio=80"
