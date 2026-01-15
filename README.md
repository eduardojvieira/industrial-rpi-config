# Industrial Raspberry Pi Config 🛡️🥧

Hardening scripts and configurations to turn a standard Raspberry Pi (CM4/CM5) into a reliable industrial controller.

## Features
- **OverlayFS (Read-Only Rootfs)**: Protects your SD card/eMMC from corruption during power failures.
- **Hardware Watchdog**: Automatically reboots the system if the kernel or application freezes.
- **Kernel Tweaks**: Optimized for industrial stability.

## Quick Hardening (Scripts)
1.  **Enable OverlayFS**: `./scripts/enable_overlayfs.sh`
2.  **Setup Watchdog**: `sudo cp config/watchdog.conf /etc/ && sudo systemctl enable watchdog`

## Why Hardening is Mandatory
Normal SD cards have limited write cycles. A logging-heavy application can kill an SD card in months. OverlayFS redirects all writes to RAM, preserving the physical media indefinitely.
