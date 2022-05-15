#!/bin/bash

if [ `id -u` == 0 ]
then
    source "./tools/standard.sh";
    source "./driver/nvidia.sh";
    source "./tools/lampp.sh";
else
    echo "Lütfen scripti 'sudo' kullanarak çalıştırın!"
fi
