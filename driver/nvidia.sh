#!/bin/bash

package='nvidia-driver-510'

if [  "$(dpkg -s $package 2>/dev/null)" ]; then
      echo "[+] ---> $package zaten sistemde yüklü."
  else
     echo "[!] ---> $package aracı yükleniyor..."
     sudo apt install -y $package
  fi
