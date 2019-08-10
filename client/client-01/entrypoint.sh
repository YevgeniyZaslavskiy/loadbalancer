#!/bin/bash

curl -v http://192.168.0.103:20081 -o "/var/opt/dump/log-$(date +'%Y-%m-%d %H:%M:%S').txt"
tail -f /dev/null
#bash

