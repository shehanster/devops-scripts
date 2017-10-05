#!/bin/bash

PROCESS='foo'

ps auxw | grep $PROCESS | grep -v grep > /dev/null
 
if [ $? != 0 ]
then
       cd  /root/bin/
           ./bar &
fi
