#!/bin/bash
server=`curl icanhazip.com`
dir=/etc/zabbix/zabbix_agentd.conf
user=root
zabbix_ip=/data/zabbix_ip
if [ "$server" != "`cat $zabbix_ip`" ]
then
for i in `cat /data/ip.list`
	do ssh -p 10086  $user@$i "sed -ri 's/Server=.*/Server=$server/' $dir && sed -ri 's/ServerActive=.*/ServerActive=$server/' $dir && service zabbix-agent restart || systemctl restart zabbix-agent"
	done
echo $server > $zabbix_ip
fi

