{ inputs, config, pkgs, lib, ... }:

{
  imports = [
    ./user.nix
    ./packages.nix
    ./programs/.default.nix
  ];
}