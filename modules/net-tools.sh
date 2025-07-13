#!/bin/bash

if ! command -v ifconfig &> /dev/null; then
    echo "[ ℹ️ ] => Installing net-tools..."
    sudo apt-get install net-tools -y > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => net-tools installation completed."
else
    echo "[ ✅ ] => net-tools is already installed."
fi