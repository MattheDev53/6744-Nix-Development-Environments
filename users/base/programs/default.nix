{ inputs, config, pkgs, lib, ... }:

{
  imports = [
    ./vscode.nix
    ./git.nix
    ./chromium.nix
  ];
}