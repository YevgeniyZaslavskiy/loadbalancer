#!/bin/bash

for ((i=1;i<=2;i++)); do curl -O -w "@log.txt" 'http://172.101.0.10/privacy/index.pdf' >> log-download-time.txt; done
tail -f /dev/null
#bash