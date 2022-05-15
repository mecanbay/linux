#!/bin/bash

if [ `id -u` == 0 ]
then
    source "./tools/standard.sh";
else
    echo "Lütfen scripti 'sudo' kullanarak çalıştırın!"
fi
