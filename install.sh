#!/bin/bash

# Command Launcher Installer
# Author: Aditya
# Description: Installs command-launcher system-wide

set -e

# Configuration
SCRIPT_NAME="command-launcher"
INSTALL_PATH="/usr/bin/$SCRIPT_NAME"
CONFIG_DIR="$HOME/.config/command-launcher"

# Ensure script is run with sudo if needed
if [[ "$EUID" -ne 0 ]]; then
  echo "[!] Please run this script with sudo:"
  echo "    sudo ./install.sh"
  exit 1
fi

# Install the script
echo "[*] Installing $SCRIPT_NAME..."
install -Dm755 "$SCRIPT_NAME" "$INSTALL_PATH"

# Create config directory if it doesn't exist
if [[ ! -d "$CONFIG_DIR" ]]; then
  mkdir -p "$CONFIG_DIR"
  chown "$SUDO_USER:$SUDO_USER" "$CONFIG_DIR"
  echo "[*] Created config directory at $CONFIG_DIR"
fi

echo "[✓] Installed successfully! Run with: $SCRIPT_NAME -h"
