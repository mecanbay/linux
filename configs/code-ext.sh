#!/bin/bash

if command -v code &>/dev/null; then
    VSCODE_CONFIG_DIR="$HOME/.config/Code/User"
    SETTINGS_FILE="$VSCODE_CONFIG_DIR/settings.json"
    extensions=(
        "ritwickdey.liveserver"
        "ms-python.python"
        "ms-vscode-remote.remote-ssh"
        "pkief.material-icon-theme"
        "ecmel.vscode-html-css"
        "bradlc.vscode-tailwindcss"
        "golang.go"
        "vue.volar"
        "repeale.material-monokai"
        "foxundermoon.shell-format"
        "bmalehorn.shell-syntax"
    )
    echo "[ ℹ️  ] => VSCode extension installer started."

    for extension in "${extensions[@]}"; do
        if code --list-extensions | grep -q "$extension"; then
            echo "[ ✅ ] => $extension is already installed."
        else
            echo "[ 📦 ] => $extension installing..."
            code --install-extension "$extension" > /dev/null 2>&1
            tput cuu1 && tput el
            echo "[ ✅ ] => $extension installed successfully."
        fi
    done

    mkdir -p "$VSCODE_CONFIG_DIR"
    cat <<EOF >"$SETTINGS_FILE"
{
    "editor.fontFamily": "MonoLisa",
    "editor.lineHeight": 0,
    "editor.fontLigatures": "'ss02' on",
    "editor.fontSize": 15,
    "editor.tokenColorCustomizations": {
        "textMateRules": [
            {
                "scope": "comment",
                "settings": {
                    "fontStyle": "italic"
                }
            }
        ]
    },
    "workbench.iconTheme": "material-icon-theme",
    "workbench.colorTheme": "Material Monokai High Contrast",
    "terminal.integrated.defaultProfile.linux": "zsh",
    "terminal.integrated.profiles.linux": {
        "zsh": {
            "path": "/usr/bin/zsh"
        }
    }
}
EOF
    chown "$USER":"$USER" "$SETTINGS_FILE"

else
    echo "[ ❌ ] => vscode is not installed"
fi
