#!/bin/bash

if ! command -v npm &>/dev/null; then
    echo "[ ℹ️ ] => Installing nvm..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install --lts
    nvm use --lts
    cat <<'EOF' >> ~/.zshrc

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

EOF
    

    LINES_TO_REMOVE=32
    for ((i=0; i<LINES_TO_REMOVE; i++)); do
        tput cuu1 && tput el
    done
    echo "[ ✅ ] => nvm installation completed."
    source $HOME/.bashrc

else
    echo "[ ✅ ] => nvm is already installed."
fi