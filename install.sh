#!/bin/bash

source ./utils/sudo.sh
source ./utils/user.sh
source ./utils/update.sh

clear
check_update


MODULE_DIR="./modules"
APPS_DIR="./apps"
CONFIGS_DIR="./configs"

AVAILABLE_APPS=()
SELECTED_APPS=""

for module in "$MODULE_DIR"/*.sh; do
    app_name=$(basename "$module" .sh)
    AVAILABLE_APPS+=("$app_name" "" ON)
done

for app in "$APPS_DIR"/*.sh; do
    app_name=$(basename "$app" .sh)
    AVAILABLE_APPS+=("$app_name" "" ON)
done

for config in "$CONFIGS_DIR"/*.sh; do
    app_name=$(basename "$config" .sh)
    AVAILABLE_APPS+=("$app_name" "" ON)
done

SELECTED_APPS=$(whiptail --title "Application Installer" \
    --checklist "Select the applications you want to install :" 20 78 10 \
    "${AVAILABLE_APPS[@]}" 3>&1 1>&2 2>&3)

EXIT_STATUS=$?
if [ $EXIT_STATUS -ne 0 ]; then
    echo "canceled"
    exit 1
fi

for app in $SELECTED_APPS; do
    app_clean=$(echo "$app" |tr -d '"')
    if [ -f "$MODULE_DIR/$app_clean.sh" ]; then
        bash "$MODULE_DIR/$app_clean.sh"
    elif [ -f "$APPS_DIR/$app_clean.sh" ]; then
        bash "$APPS_DIR/$app_clean.sh"
    elif [ -f "$CONFIGS_DIR/$app_clean.sh" ]; then
        bash "$CONFIGS_DIR/$app_clean.sh"
    else
        echo "Application not found : $app_clean"
    fi
done