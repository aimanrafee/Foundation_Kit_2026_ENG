#!/bin/bash

# @name: Linux Basic Setup & Diagnostic
# @description: Essential automation script for Ubuntu/Debian environments.
# @version: 1.0.0 (2026)

echo "------------------------------------------"
echo "FOUNDATION KIT: LINUX SYSTEM INITIALIZER"
echo "------------------------------------------"

# 1. Update System Repositories
echo "[1/3] Updating system packages..."
# sudo apt update && sudo apt upgrade -y

# 2. Check Essential Tools
echo "[2/3] Checking developer tools..."
command -v git >/dev/null 2>&1 || { echo >&2 "Git is not installed. Aborting."; }
command -v node >/dev/null 2>&1 || { echo >&2 "Node.js is not installed. Aborting."; }

# 3. Network Diagnostic
echo "[3/3] Testing offline/online status..."
ping -c 1 google.com > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Status: System is Online."
else
    echo "Status: System is Offline / No Connection."
fi

echo "------------------------------------------"
echo "Diagnostic Complete."
