#!/bin/bash
# Savoir si on est en UEFI
[ -d /sys/firmware/efi ] && echo "Session EFI" || echo "Session non-EFI"
