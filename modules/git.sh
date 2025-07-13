#!/bin/bash

if ! command -v git &> /dev/null; then
    echo "[ ℹ️ ] => Installing git..."
    sudo apt-get install git -y > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => git installation completed."
    
else
    echo "[ ✅ ] => git is already installed."
fi