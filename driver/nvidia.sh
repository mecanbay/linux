#!/bin/bash

driver='nvidia-driver-510'

if [ "$(dpkg -s $driver 2>/dev/null)" ]; then
   echo "[+] ---> $driver zaten sistemde yüklü."
else
   echo "[!] ---> $driver aracı yükleniyor..."
   sudo apt install -y $driver
fi
