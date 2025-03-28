#!/bin/env bash

# Updates/Installs the flake from GitHub
if [ "$(which nix)" == "" ]; then
  echo "Could not find Nix. If you have already installed Nix, Try running 'exec \$SHELL', then try again"
else
  nix run github:nix-community/home-manager switch -- --flake github:MattheDev53/6744-Nix-Development-Environments
fi