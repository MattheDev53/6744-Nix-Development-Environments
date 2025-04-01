#!/bin/env bash

# Install Nix if not installed already
if [ "$(which nix)" == "" ]; then
  sh <(curl -L https://nixos.org/nix/install) --daemon
else
  echo "Nix is already installed"
fi

# Checks if Flakes and Nix Command are enabled
if [ "$(grep 'experimental-features = nix-command flakes' /etc/nix/nix.conf)" == "" ]; then
  echo "experimental-features = nix-command flakes" | sudo tee /etc/nix/nix.conf
  sudo systemctl restart nix-daemon
else
  echo "Nix Command and Flakes are already enabled"
fi

echo "Nix is installed, please run 'exec \$SHELL' to restart your shell"