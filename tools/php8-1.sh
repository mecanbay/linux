#!/bin/bash

declare -A php=(
    [name]='PHP'
    [repository]='ppa:ondrej/php'
)

requirements=('lsb-release'
    'ca-certificates'
    'apt-transport-https'
    'software-properties-common'
)

inst_packages=('php8.1'
    'php8.1-ps'
    'php8.1-zip'
    'php8.1-xml'
    'php8.1-curl'
    'php8.1-mysql'
)

function check_req() {
    for req in ${requirements[@]}; do
        if [ "$(dpkg -s $req 2>/dev/null)" ]; then
            echo "$req zaten sistemde yüklü"
        else
            echo "$req yükleniyor..."
            sudo apt install -y $req
        fi
    done
}

function add_repository() {
    if [ "$(ls -la /etc/apt/sources.list.d | grep -i ${php[repository]:4:6})" ]; then
        echo "Repository zaten ekli!..."
    else
        sudo add-apt-repository ${php[repository]}

    fi
}

function installation() {
    for inst in ${inst_packages[@]}; do
        if [ "$(dpkg -s $inst 2>/dev/null)" ]; then
            echo "$inst zaten sistemde yüklü"
        else
            echo "$inst yükleniyor..."
            sudo apt install -y $inst
        fi
    done
}

function init() {
    check_req
    add_repository
    installation
}

init
