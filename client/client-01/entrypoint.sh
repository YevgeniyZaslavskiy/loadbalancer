#!/bin/bash

sleep 1
curl -v http://${SERVER} -o "/var/opt/dump/log-${CLIENT}-$(date +'%Y-%m-%d %H:%M:%S').txt"
tail -f /dev/null
#bash

