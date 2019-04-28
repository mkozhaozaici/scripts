#!/bin/bash
d=`date +%d`
dir=/root/mysqldump/
sql=zrlog.sql
passwd=shenxinyu.123
user=root
/usr/local/mysql/bin/mysqldump -u$user -p$passwd  zrlog >$dir$d$sql
