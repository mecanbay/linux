#!/bin/bash
if ! command -v yarn &>/dev/null; then
    if command -v npm &>/dev/null; then
        echo "[ ℹ️ ] => Installing yarn..."
        npm install -g yarn
        LINES_TO_REMOVE=8
        for ((i=0; i<LINES_TO_REMOVE; i++)); do
            tput cuu1 && tput el
        done
        source $HOME/.bashrc
        echo "[ ✅ ] => yarn installation completed."
    else
        read -p "[ ℹ️ ] => The npm package is required for yarn installation. Install 'npm'? :" answer
        tput cuu1 && tput el
        if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
            source "./apps/nvm.sh"
            source "./apps/yarn.sh"
        else
            echo "❌ yarn will not be installed."
        fi
    fi
else
    echo "[ ✅ ] => yarn is already installed."
fi
