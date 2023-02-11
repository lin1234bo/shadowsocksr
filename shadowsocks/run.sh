#!/bin/bash
cd `dirname $0`
eval $(ps -ef | grep "[0-9] python server\\.py a" | awk '{print "kill "$2}')
nohup python3 server.py -p 443 -k password -m chacha20 >> ssserver.log 2>&1 &

