#!/bin/bash
wget https://github.com/Kazhna/RAP/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
tar -vxf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
cd cpuminer-gr-1.2.4.1-x86_64_linux
cat > 3.conf
{
  "_comment1": "Any long-format command line argument ",
  "_comment2": "may be used in this JSON configuration file",

  "url": "stratum+tcps://eu.flockpool.com:5555",
  
  "_comment3": "Backup/failover stratum used in case of connection problems",
  "url-backup": "stratum+tcps://us-west.flockpool.com:5555",

  "user": "RCgt6ZJVKmR3QtuNsBGJ3zkD16BEEd6Vr7.kazekvm2",
  "pass": "x",

  "algo": "gr",
  "threads": 0,

  "_comment4": "tune-full takes longer but should provide better hashrate",
  "tune-full": false,

  "_comment5": "You can specify different name/location for your tune config",
  "tune-config": "tune_config",

  "_comment6": "You can force miner to not tune. It tunes by default",
  "_comment7": "Or force it even if tune-config file already exists",
  "no-tune": false,
  "force-tune": false,

  "_comment8": "\"log\": \"filename\" can be used to create logfile of output",
  "benchmark": false,
  "stress-test": false,
  "quiet": false
}
