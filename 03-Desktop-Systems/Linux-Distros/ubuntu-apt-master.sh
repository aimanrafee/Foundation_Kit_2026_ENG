#!/bin/bash
# @description: Advanced Ubuntu/Debian Setup
# @version: 1.1.0 (2026)

echo "--- 🏛️ Starting Foundation Kit Ubuntu Master Setup ---"

# Update and Upgrade System
sudo apt update && sudo apt full-upgrade -y

# Install Professional Tooling
# build-essential: Compiler for C/C++
# curl/wget: Network tools
# git: Version control
sudo apt install -y build-essential curl wget git htop code

# Cleanup
sudo apt autoremove -y && sudo apt clean

echo "✅ Ubuntu Environment Optimized."
