#!/bin/bash
cd /root/IP
ifconfig | grep 'inet addr'|awk -F ":" '{print $2}'|awk '{print $1}' > /root/IP/Hostname
git add .
git commit -am "Hostname"
git push

