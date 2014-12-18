#!/bin/bash

sed -i 's|CWD|'"${TROOT}"'|g' nginx.conf
sed -i 's|DBHOSTNAME|'"${DBHOST}"'|g' nginx.conf

${MRUBY_HOME}/sbin/nginx -c $TROOT/nginx.conf -g "worker_processes '"${MAX_THREADS}"';" &
