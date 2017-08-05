#!/bin/bash

DATABASE=
SOURCE_HOST=
DESTINATION_HOST=

SOURCE_USER=
SOURCE_PASSWORD=
DESTINATION_USER=
DESTINATION_PASS=

mysqldump --opt --log-error=/mnt/datadump.err --socket=/var/run/mysqld/mysqld.sock -l -B $DATABASE -u$SOURCE_USER -p$SOURCE_PASSWORD -h$SOURCE_HOST | mysql -u$DESTINATION_USER -p$DESTINATION_PASS -C -h$DESTINATION_HOST
