#!/bin/bash

if ! command -v notesnook &>/dev/null; then
    echo "[ ℹ️ ] => Installing notesnook..."
    sudo snap install notesnook
    tput cuu1 && tput el
    tput cuu1 && tput el
    echo "[ ✅ ] => notesnook installation completed."

else
    echo "[ ✅ ] => notesnook is already installed."
fi
