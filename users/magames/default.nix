{ config, pkgs, ... }:

{
  imports = [
    ./user.nix
    ./packages.nix
    ./programs/default.nix
  ];
}