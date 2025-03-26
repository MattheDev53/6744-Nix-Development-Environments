{ inputs, config, pkgs, lib, ... }:

{
  home.username = "magames";
  home.homeDirectory = "/home/magames/";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}