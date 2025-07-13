#!/bin/bash


function check_update() {
    echo "[ ℹ️ ] => system is updating..."
    sudo apt update
    sudo apt full-upgrade -y
    sudo apt autoremove -y
    clear
    echo "[ ✅ ] => system update completed."
}
