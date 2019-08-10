#!/bin/bash

curl -v http://${SERVER} -o "/var/opt/dump/log-$(date +'%Y-%m-%d %H:%M:%S').txt"
tail -f /dev/null
#bash

