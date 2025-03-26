{ inputs, config, pkgs, lib, ... }:

{
  home.username = "user";
  home.homeDirectory = "/home/user/";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}