#!/bin/bash

declare -A lampp=(
    [name]='Lampp'
    [url]='https://downloadsapachefriends.global.ssl.fastly.net/7.4.29/xampp-linux-x64-7.4.29-0-installer.run?from_af=true'
)

if [ -f "/opt/lampp/manager-linux-x64.runs" ]; then
    echo "[+] ---> ${lampp[name]} zaten sistemde yüklü..."
else
    echo "[!] ---> ${lampp[name]} indiriliyor..."
    wget -c ${lampp[url]} -O ${lampp[name]}.run
    chmod +x ${lampp[name]}.run
    echo "[!] ---> ${lampp[name]} yükleniyor..."
    ./${lampp[name]}.run
    rm -rf ${lampp[name]}.run
    echo -n "[!] ---> İPUCU : ${lampp[name]} aracına terminal üzerinden erişmek için "
    echo -n '"echo '
    echo -n "'alias lampp="
    echo -n '"sudo /opt/lampp/./manager-linux-x64.run &"'
    echo -n "' >> ~/.bashrc komutunu çalıştırabilirsiniz. :)"
    echo ' '
    read -p "Devam etmek Enter'a basın..."

   
fi
