#!/bin/bash
echo "Nazwa Maszynki"
read name
wget https://github.com/Kazhna/RAP/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
tar -vxf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
head -c -1 top > /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
echo -n $name >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
head -c -1 bottom >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
cd cpuminer-gr-1.2.4.1-x86_64_linux
cat < config.json
#sudo ./cpuminer.sh
