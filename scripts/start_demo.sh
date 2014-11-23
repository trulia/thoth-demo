#!/bin/bash
base_dir=`pwd`/..
# Start activeMQ first
echo "Starting activemq ... "
${base_dir}/activemq/bin/activemq start
echo "Starting thoth index ..."
cd ${base_dir}/thoth-index ; nohup java -jar start.jar &
echo "Starting an example solr index for collection ... "
cd ${base_dir}/to-be-intercepted ; nohup java -Xmx4g -jar start.jar &
echo "Starting Thoth ... "
cd ${base_dir}/thoth ; nohup java -jar start.jar &
echo "Starting Thoth Monitor ... "
cd ${base_dir}/thoth-monitor ; nohup java -jar start.jar &

echo "Starting API  ... "
cd ${base_dir}/thoth-api ; nohup node index.js &
echo "Starting Dashboard  ... "
cd ${base_dir}/thoth-dashboard ; nohup python -m SimpleHTTPServer &