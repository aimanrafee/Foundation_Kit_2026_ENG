#!/bin/bash
# @description: Fedora/RHEL Optimized Setup
# @version: 1.0.0 (2026)

echo "--- 🏛️ Starting Foundation Kit Fedora Setup ---"

# Speed up DNF (Fastest Mirror)
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf

# System Update
sudo dnf update -y

# Install Core Tools
sudo dnf install -y @development-tools git util-linux-user

echo "✅ Fedora Environment Ready."
