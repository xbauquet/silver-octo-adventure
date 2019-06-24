#!/usr/bin/env bash

#!/bin/bash

function jsonval {
    temp=`echo $json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w $prop`
    echo ${temp##*|}
}

user=defaultUser
pass=trafficlightssalecousincoffee
json=`curl --user cooluser:password http://192.168.99.100/auth/user/verify`
prop='access_token'
picurl=`jsonval`
token=$picurl

echo `curl http://192.168.99.100/api/api/data -H "Content-Type:application/json; charset=UTF-8" -H "Authorization: Bearer $token"`