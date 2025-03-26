{ inputs, config, pkgs, lib, ... }:

{
  imports = [
    ./git.nix
    ./vscode.nix
  ];
}