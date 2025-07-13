#!/bin/bash

if ! [ -d "$HOME/.oh-my-zsh" ]; then
    echo "[ ℹ️ ] => Installing oh-my-zsh..."
    yes | sh -c "$(wget -nv https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" > /dev/null 2>&1
    echo "[ -z "$ZSH_VERSION" ] && exec zsh" >> $HOME/.bashrc
    source $HOME/.bashrc
    tput cuu1 && tput el
    tput cuu1 && tput el
    echo "[ ✅ ] => oh-my-zsh installation completed."

else
    echo "[ ✅ ] => oh-my-zsh is already installed."
fi
