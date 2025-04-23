#!/bin/bash

echo "This is script 47"


CRON_JOB="0 * * * * find /tmp -type f -name '*.tmp' -delete"

# Add the cron job
(crontab -l; echo "$CRON_JOB") | crontab -

echo "Cron job added: Temporary files will be deleted every hour."
