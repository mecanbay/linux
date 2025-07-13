#!/bin/bash

if ! command -v zsh &> /dev/null; then
    echo "[ ℹ️ ] => Installing zsh..."
    sudo apt-get install zsh -y > /dev/null
    tput cuu1 && tput el
    echo "[ ✅ ] => zsh installation completed."
else
    echo "[ ✅ ] => zsh is already installed."
fi