#!/bin/bash
wipe="\033[1m\033[0m"
yellow='\E[1;36m'
nc -z -w1 hostname port
ldapresult=$?
if [ "$ldapresult" != 0 ]; then
        echo -e "Port 389  is closed to hostname"
else
        echo -e "Port 389  is${yellow} open${wipe} to hostname"
fi
