#!/bin/bash
ips=$(cat ./ips)
array_ips=($ips)

for ip in ${array_ips[@]}
do
        sshpass -p "$(cat ./senha)" ssh -o StrictHostKeyChecking=no "$(cat ./user)"@"$ip" -p22 ""
done