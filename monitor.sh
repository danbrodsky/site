#!/bin/bash

# Neo4j is running within a memory-restricted JVM
# Set cronjob to periodically check if neo4j has crashed and restart it
# * * * * * $HOME/monitor.sh

if [ $(docker ps | grep "Up" | wc -l) != 1 ]; then
  echo "Restarted container at $(date +%c)" >> /root/container.log
  docker restart $(docker ps -qa)
fi

