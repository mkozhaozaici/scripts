#!/bin/bash
find /root/mysqldump/ -type f -mtime +7 -exec rm -fv {} {} \;
