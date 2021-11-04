#!/bin/sh

ENV_VARS_FILE="/home/app/.cron_env"

echo "Dumping env variables into ${ENV_VARS_FILE}"
eval $(printenv | awk -F= '{print "export " "\""$1"\"""=""\""$2"\"" }' >> ${ENV_VARS_FILE})
chmod +x ${ENV_VARS_FILE}

echo "Running command $@"
exec "$@"
