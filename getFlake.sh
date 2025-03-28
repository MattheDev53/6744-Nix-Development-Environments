#!/bin/env bash

# Install Nix if not installed already
if [ "$(which nix)" == "" ]; then
  sh <(curl -L https://nixos.org/nix/install) --daemon
fi

# Checks if Flakes and Nix Command are enabled
if [ "$(grep 'experimental-features = nix-command flakes' /etc/nix/nix.conf)" == "" ]; then
  echo "experimental-features = nix-command flakes" | sudo tee /etc/nix/nix.conf
fi

# Updates/Installs the flake from GitHub
#test
nix run github:nix-community/home-manager switch -- --flake github:MattheDev53/6744-Nix-Development-Environments