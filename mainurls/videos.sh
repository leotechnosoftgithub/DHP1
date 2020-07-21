#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/sanmay  http://18.207.24.43/sanmay
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/sanmay`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./sanmay.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job job1 completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
