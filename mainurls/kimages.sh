#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/kimages1  http://18.207.24.43/kimages1
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/kimages1`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./alpha8.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job job1 completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
