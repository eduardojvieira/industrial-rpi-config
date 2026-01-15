#!/bin/bash
# Enable OverlayFS to protect root filesystem on Raspberry Pi
# WARNING: This will make your filesystem Read-Only after reboot.

echo "Enabling Overlay File System..."

# Enable via raspi-config non-interactively
sudo raspi-config nonint enable_overlayfs

# Check status
if [ $? -eq 0 ]; then
    echo "OverlayFS enabled. Please reboot your Pi."
else
    echo "Error enabling OverlayFS. Ensure you are on a Raspberry Pi OS."
fi
