#!/bin/bash
d=`date -d "-1 day" +%Y%m%d`    
logdir="/usr/local/nginx/logs/"                                              
nginx_pid="/usr/local/nginx/logs/nginx.pid" 
cd $logdir                                                  
for log in `ls *.logs`                         
do
    mv $log $log-$d                                
done
/bin/kill -HUP `cat $nginx_pid`
