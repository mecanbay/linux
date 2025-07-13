#!/bin/bash

if ! command -v guake &> /dev/null; then
    echo "[ ℹ️ ] => Installing guake..."
    sudo apt-get install guake -y > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => guake installation completed."
else
    echo "[ ✅ ] => guake is already installed."
fi