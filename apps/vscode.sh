#!/bin/bash

if ! command -v code &>/dev/null; then
    echo "[ ℹ️ ] => Installing code..."
    wget -nv -O vscode.deb "https://update.code.visualstudio.com/latest/linux-deb-x64/stable"
    sudo apt-get install ./vscode.deb -y
    rm -rf vscode.deb
    LINES_TO_REMOVE=22
    for ((i=0; i<LINES_TO_REMOVE; i++)); do
        tput cuu1 && tput el
    done
    echo "[ ✅ ] => code installation completed."

else
    echo "[ ✅ ] => code is already installed."
fi
