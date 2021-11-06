#!/bin/sh

while true
do  
    echo "---- Running check $(date) ----"
    cd /home/app/
    npm run task:check
    echo "---- Run Finished.  Waiting ${CHECK_WAIT} ----"
    sleep ${CHECK_WAIT}
done
