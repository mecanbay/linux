#!/bin/bash

if ! command -v gcc &> /dev/null; then
    echo "[ ℹ️ ] => Installing build-essential..."
    sudo apt-get install build-essential -y > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => build-essential installation completed."

else
    echo "[ ✅ ] => build-essential is already installed."
fi