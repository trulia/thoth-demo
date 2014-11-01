#!/bin/bash
base_dir=`pwd`
# Start activeMQ first
echo "Starting activemq ... "
${base_dir}/activemq/bin/activemq start
echo "Starting thoth index ..."
cd ${base_dir}/thoth-index ; nohup java -jar start.jar &
echo "Starting an example solr index for collection ... "
cd ${base_dir}/collector ; nohup java -jar start.jar &
echo "Starting Thoth ... "
cd ${base_dir}/thoth ; nohup java -jar start.jar &
