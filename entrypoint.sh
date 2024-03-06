#!/bin/bash
# Output timestamp
echo "$(date +'%H:%M:%S.%3N') Call jar file"
cd /home/ubuntu

# Check whether crac-files folder is present not empty and if so, restore from checkpoint, otherwise start from jar
if [ -d "crac-files" ]; then
  if [ "$(ls -A crac-files)" ]; then
    echo "Restore from checkpoint"
    java -XX:CRaCRestoreFrom=crac-files
  else
    echo "Standard start from jar file"
    java -XX:CRaCCheckpointTo=crac-files -jar demo.jar
  fi
else
  echo "No crac-files folder found"
  mkdir crac-files
  echo "Standard start from jar file"
  java -XX:CRaCCheckpointTo=crac-files -jar demo.jar
fi
