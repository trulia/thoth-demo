#!/bin/bash

#############
#
#	Delete all documents in the thoth index 
#	both cores (real time [collection1] and shrank )
############
#

curl 'http://localhost:8983/solr/collection1/update?stream.body=%3Cdelete%3E%3Cquery%3E*:*%3C/query%3E%3C/delete%3E&commit=true'
curl 'http://localhost:8983/solr/shrank/update?stream.body=%3Cdelete%3E%3Cquery%3E*:*%3C/query%3E%3C/delete%3E&commit=true'