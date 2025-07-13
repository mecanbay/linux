#!/bin/bash

if ! command -v go &>/dev/null; then
    echo "[ ℹ️ ] => Installing go..."
    sudo snap install go --classic
    tput cuu1 && tput el
    tput cuu1 && tput el
    echo "[ ✅ ] => go installation completed."

else
    echo "[ ✅ ] => go is already installed."
fi
