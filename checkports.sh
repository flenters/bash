#!/bin/bash
wipe="\033[1m\033[0m"
yellow='\E[1;36m'
nc -z -w1 ldaphosts.rmb.co.za 389
ldapresult=$?
if [ "$ldapresult" != 0 ]; then
        echo -e "Port 389  is closed to ldaphosts.rmb.co.za"
else
        echo -e "Port 389  is${yellow} open${wipe} to ldaphosts.rmb.co.za"
fi
