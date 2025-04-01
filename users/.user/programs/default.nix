{ inputs, config, pkgs, lib, ... }:

{
  imports = [
    ./git.nix
    ./vscode.nix
    ./chromium.nix
  ];
}