#!/bin/bash
#wget https://raw.githubusercontent.com/Kazhna/RAP/main/2.sh
wget https://raw.githubusercontent.com/Kazhna/RAP/main/top
wget https://raw.githubusercontent.com/Kazhna/RAP/main/bottom
#chmod 777 2.sh
#./2.sh
#new
echo "Nazwa Maszynki"
echo " 1- EPYC, 2 -XEON, 3 - E5
read proc
if [proc==1] then echo " intel" else echo "AMD"
#read name
wget https://github.com/Kazhna/RAP/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
tar -vxf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
head -c -1 top > /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
echo -n $name >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
head -c -1 bottom >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
rm top bottom
cd cpuminer-gr-1.2.4.1-x86_64_linux
sudo ./cpuminer.sh
