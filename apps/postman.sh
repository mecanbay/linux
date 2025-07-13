#!/bin/bash

if ! command -v postman &>/dev/null; then
    echo "[ ℹ️ ] => Installing postman..."
    sudo snap install postman
    tput cuu1 && tput el
    tput cuu1 && tput el
    echo "[ ✅ ] => postman installation completed."
else
    echo "[ ✅ ] => postman is already installed."
fi
