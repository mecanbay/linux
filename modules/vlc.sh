#!/bin/bash

if ! command -v vlc &> /dev/null; then
    echo "[ ℹ️ ] => Installing vlc..."
    sudo apt-get install vlc -y > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => vlc installation completed."
else
    echo "[ ✅ ] => vlc is already installed."
fi