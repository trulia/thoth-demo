#!/bin/bash
#Kill the process according to port number

#Demo ActiveMQ Instance
ACTIVEMQ_PORT=8161
#Demo Solr Instance (to-be-intercepted)
TO_BE_INTERCEPTED_PORT=8900
#Demo thoth-index instance
THOTH_INDEX_PORT=8983
#Demo THOTH Instance
THOTH_PORT=8081
#Demo dashboard nstance
THOTH_DASHBOARD=8000
#Demo api Instance
THOTH_API=3001


lsof -i tcp:${ACTIVEMQ_PORT} | awk 'NR!=1 {print $2}' | xargs kill 
lsof -i tcp:${TO_BE_INTERCEPTED_PORT} | awk 'NR!=1 {print $2}' | xargs kill
lsof -i tcp:${THOTH_INDEX_PORT} | awk 'NR!=1 {print $2}' | xargs kill
lsof -i tcp:${THOTH_PORT} | awk 'NR!=1 {print $2}' | xargs kill
lsof -i tcp:${THOTH_DASHBOARD} | awk 'NR!=1 {print $2}' | xargs kill
lsof -i tcp:${THOTH_API} | awk 'NR!=1 {print $2}' | xargs kill
