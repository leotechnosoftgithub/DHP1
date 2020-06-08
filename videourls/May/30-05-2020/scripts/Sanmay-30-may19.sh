#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/videoips1  http://18.207.24.43/videoips1
for i in `cat ./videourls/May/30-05-2020/urls/19`;do ip=`shuf -n 1 ./ips/videoips1`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha9.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job Sanmay-30-may19.sh completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
