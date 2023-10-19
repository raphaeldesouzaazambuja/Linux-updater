#!/bin/bash

if [ $(which apt < /dev/null) ] || [ $(which dpkg < /dev/null) ]; then
  clear
  echo "Starting system update..."

  if [ "$EUID" -ne 0 ]; then
    echo "This script requires superuser permissions. Execute with sudo."
    exit 1
  fi

  sudo apt update

  sudo apt full-upgrade -y

  clear

  echo "Performing system cleanup..."
  sudo apt autoclean -y
  sudo apt autoremove -y
  sudo apt autopurge -y
  sudo find / -type d -empty -not -path "/home/*" -exec rmdir {} \;

  echo "The system has been successfully updated and cleaned."
else
  echo "This system doesn't use apt or dpkg. The script cannot be executed here."
fi
