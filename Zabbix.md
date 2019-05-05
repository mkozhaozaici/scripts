[TOC]

## Zabbix监控平台

#### server服务器:

```
114.93.75.71  (以下简称server)    系统：CentOS6.10
```

> server服务器无固定的公网IP，会定时更换

#### agent服务器：

```
139.196.4.188  （以下简称web）      系统：CentOS6.5
139.196.52.45  （以下简称DB）       系统：CentOS6.5
139.224.82.62  （以下简称test）     系统：CentOS7.5
IP:106.15.228.244 （以下简称OA）    系统：CentOS7.6
```

#### 软件信息：

```
监控：zabbix 4.0
数据库：mysql 5.6
web：httpd   2.4
```

#### 用户信息:

```
zabbix数据库账户：zabbix   密码：123456

Zabbix管理账号：admin     密码：zabbix
```

#### 相关路径:

```
zabbix主目录：/usr/share/zabbix/
zabbix配置目录：/etc/zabbix
zabbix监控脚本目录：/usr/lib/zabbix/alertscripts
```

