#!/bin/bash

USER='user'
PASS='password'
URL='localhost'
now=$(date +"%Y-%m-%d")

mysql -u$USER -p$PASS -h$URL   --execute='show databases;'

read -p "Enter database name:  " name

set -e


mysqldump -u$USER -p$PASS -h$URL "${name}" > "${name}"-$now.sql
