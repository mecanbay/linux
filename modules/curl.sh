#!/bin/bash

if ! command -v curl &> /dev/null; then
    echo "[ ℹ️ ] => Installing curl..."
    sudo apt-get install curl -y > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => curl installation completed."
else
    echo "[ ✅ ] => curl is already installed."
fi