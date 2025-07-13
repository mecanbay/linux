#!/bin/bash

if ! command -v vue &>/dev/null; then
    if command -v yarn &>/dev/null; then
        echo "[ ℹ️ ] => Installing vue..."
        yarn global add @vue/cli
        echo 'export PATH="$(yarn global bin):$PATH"' >> ~/.zshrc
        source ~/.zshrc
        vue --version
    else
        read -p "[ ℹ️ ] => The yarn package is required for Vue installation. Should 'yarn' be installed? : " answer
        tput cuu1 && tput el
        if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
            source "./apps/yarn.sh"
            source "./apps/vue.sh"
        else
            echo "❌ vue will not be installed."
        fi
    fi
    
else
    echo "[ ✅ ] => vue is already installed."
fi