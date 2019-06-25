#!/usr/bin/env bash

#!/bin/bash

function jsonval {
    temp=`echo $json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w $prop`
    echo ${temp##*|}
}

ip=`minikube ip`

json=`curl --user cooluser:password http://${ip}/auth/user/verify`
prop='token'
picurl=`jsonval`
token=${picurl}
echo ${token}
echo `curl -L -k http://${ip}/main/api/data -H "Content-Type:application/json; charset=UTF-8" -H "Authorization: Bearer $token"`



curl -L -k http://auth-service:6000/user/exists -H "Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjb29sdXNlciIsImlzcyI6ImF1dGh5IiwiZW1haWwiOiJ1c2VyQGRvbWFpbi5jb20iLCJleHAiOjE1NjE0NzE2NTIsImlhdCI6MTU2MTQ3MTU5MiwibmJmIjoxNTYxNDcxNTkyLCJhdWQiOiJxdWF5LmlvL2p3dGF1dGhuIn0.PEx1KU8JvnJ8Ul3HQun5peCSn8A15lc3gN2zTwWPhmVhE4XjZaHHMVhVn4fwuz5Mmwu4jyy26lqltQeg7wzgfmT64Wo6hhXshnwHSsHGt3SIS3lRAT4CNofMmgaiJmTgiOo6_dWHl50dXKOh9MRMMP2qMYLYOmclb1q6a-6GPfUcIAyHW7k2x2nYlAmDG8UQC6BdJpsyyk8ubgSVPdGnflZQXKNWOK2vrKm5kGqDep36EyTDw1NvQ9lzebDlp778T-05kJfwC6_aVs1l0G5ZfXIn5Lfq2zgNGgAcFqe20y6NlcBn04hG9PqM2C2OCRWcH0HNUaC43EPwiv593Z-CYvmNCnMq_c-i4z_hfdNaJaoZgv5UKOAkjIza5crd1yHTkoL4wq5lwRoqfrkBSDPNvv1RfogvWC1KsjDPXrQIE2Jg4ijdMnEcVq5qXpVwGMoGDufjvaaUWIoD6pjGTKcQ1xmyiC1LE6EXA58XghCYILpcdtN9NElCtDdrNFRZI_3DJbb56KP85RnR9FVJqUT5SgiQxUfFqPlFAH1viPGOIgQl8Ea2c7pWte7wC99E_u6NKLumKhwBwydgt32oVV8W2n0HlVjbN2lfDQBrX0WHwcr4bMKZGP7hnC2YIRQBpNCddvI-uVmHgpJdXwAeqdhR_d7Caq6XegBCk51WD9p9Yqc"



curl -L -k http://192.168.99.116/main/api/data -H "Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjb29sdXNlciIsImlzcyI6ImF1dGh5IiwiZW1haWwiOiJ1c2VyQGRvbWFpbi5jb20iLCJleHAiOjE1NjE0NzE2NTIsImlhdCI6MTU2MTQ3MTU5MiwibmJmIjoxNTYxNDcxNTkyLCJhdWQiOiJxdWF5LmlvL2p3dGF1dGhuIn0.PEx1KU8JvnJ8Ul3HQun5peCSn8A15lc3gN2zTwWPhmVhE4XjZaHHMVhVn4fwuz5Mmwu4jyy26lqltQeg7wzgfmT64Wo6hhXshnwHSsHGt3SIS3lRAT4CNofMmgaiJmTgiOo6_dWHl50dXKOh9MRMMP2qMYLYOmclb1q6a-6GPfUcIAyHW7k2x2nYlAmDG8UQC6BdJpsyyk8ubgSVPdGnflZQXKNWOK2vrKm5kGqDep36EyTDw1NvQ9lzebDlp778T-05kJfwC6_aVs1l0G5ZfXIn5Lfq2zgNGgAcFqe20y6NlcBn04hG9PqM2C2OCRWcH0HNUaC43EPwiv593Z-CYvmNCnMq_c-i4z_hfdNaJaoZgv5UKOAkjIza5crd1yHTkoL4wq5lwRoqfrkBSDPNvv1RfogvWC1KsjDPXrQIE2Jg4ijdMnEcVq5qXpVwGMoGDufjvaaUWIoD6pjGTKcQ1xmyiC1LE6EXA58XghCYILpcdtN9NElCtDdrNFRZI_3DJbb56KP85RnR9FVJqUT5SgiQxUfFqPlFAH1viPGOIgQl8Ea2c7pWte7wC99E_u6NKLumKhwBwydgt32oVV8W2n0HlVjbN2lfDQBrX0WHwcr4bMKZGP7hnC2YIRQBpNCddvI-uVmHgpJdXwAeqdhR_d7Caq6XegBCk51WD9p9Yqc"



