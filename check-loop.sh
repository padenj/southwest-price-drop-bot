#!/bin/sh
. /home/app/.cron_env

while true
do  
    echo "---- Running check $(date) ----"
    cd /home/app/
    npm run task:check
    sleep 60m
done
