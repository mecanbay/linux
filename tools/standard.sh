#!/bin/bash

package=(tilix gedit firefox gedit vlc nomacs guake net-tools curl openvpn kazam flameshot python3-pip)

for a in "${package[@]}"; do
  if [ "$(dpkg -s $a 2>/dev/null)" ]; then
    echo "[+] ---> $a zaten sistemde yüklü."
  else
    echo "[!] ---> $a aracı yükleniyor..."
    sudo apt install -y $a
  fi
done
