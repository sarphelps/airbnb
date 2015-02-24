#!/bin/bash
date_dir=$(date +"%Y-%m-%d")
mkdir backup/$date_dir
# Backup the airbnb database
"$SQLANY16/bin64/dbbackup" -c "uid=dba;pwd=sql;eng=airbnb;dbf=/home/tom/src/airbnb/db/dbnb.db" backup/$date_dir
