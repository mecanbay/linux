#!/bin/bash

if ! command -v bitwarden &> /dev/null; then
    echo "[ ℹ️ ] => Installing bitwarden..."
    sudo snap install bitwarden
    tput cuu1 && tput el
    tput cuu1 && tput el
    echo "[ ✅ ] => bitwarden installation completed."
else
    echo "[ ✅ ] => bitwarden is already installed."
fi