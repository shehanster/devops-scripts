# Devops-scripts
This is a collection of various kinds of scripts used to automate asks written in many languages depending on the requirement. 


Contents

| 1.mysql-dump.sh 
  Simple shellscript to get mysql dumps with date time stamp . run the script with the credentials and you will be prompted
  for what database you want and once you mention it the database dump will be there. 
  
  
| 2.mysqldump-to-csv.sql
   This sql dumps table data to a csv formatted file. read commented lines on how to run the script.

| 3.get-mysql-userlist.pl 
a little perl script to run against with root credentials or superuser credentials to get user and host with their grants to display on CLI.

| 4.pipe_mysqldump.sh
This script lets you use the mysql dump in realtime to dump very large data from mysql to another mysql instance if replication or file copy is not possible.
