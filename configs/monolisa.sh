#!/bin/bash

if ! [ -f "/usr/local/share/fonts/TTF/MonoLisa-normal.ttf" ]; then
    echo "[ ℹ️ ] => Installing monolisa font..."
    git clone https://github.com/JonyPlo/monolisa-font.git $HOME/Downloads/monolisa > /dev/null 2>&1
    sudo mkdir -p /usr/local/share/fonts/TTF
    sudo cp $HOME/Downloads/monolisa/fonts/MonoLisa-normal.ttf /usr/local/share/fonts/TTF/
    sudo cp $HOME/Downloads/monolisa/fonts/MonoLisa-italic.ttf /usr/local/share/fonts/TTF/
    sudo fc-cache -f -v > /dev/null
    rm -rf $HOME/Downloads/monolisa/ > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => monolisa font installation completed."
else
    echo "[ ✅ ] => monolisa font is already installed."
fi