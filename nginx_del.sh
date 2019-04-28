#!/bin/bash
dir=/usr/local/nginx/logs
log="cxsw.log*"
find $dir -type f -name "$log" -mtime +30 -exec rm -fv {} {} \;
