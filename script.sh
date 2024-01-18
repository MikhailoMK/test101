#!/bin/bash

db_state=$(echo "select instance_name, status, database_status from v\$instance;" | sqlplus -s / as sysdba)

listener_state=$(lsnrctl status)

db_info=$(echo "select name, db_unique_name, (select file_name from v\$passwordfile_info) as way from v\$database;" | sqlplus -s / as sysdba)


echo ======================================================================================================
echo DB state:
echo "$db_state"
echo ======================================================================================================
echo Listener state:
echo "$listener_state"
echo ======================================================================================================
echo DB info:
echo "$db_info"
