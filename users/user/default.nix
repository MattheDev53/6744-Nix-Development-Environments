{ config, pkgs, ... }:

{
  imports = [
    ./user.nix
    ./packages.nix
  ];
}