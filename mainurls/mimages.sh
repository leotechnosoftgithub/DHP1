#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/imageips1  http://67.205.178.30/ips/imageips1
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/imageips1`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha7.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job job1 completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
