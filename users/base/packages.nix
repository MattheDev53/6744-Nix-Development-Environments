{ inputs, config, pkgs, lib, ... }:

{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    # Fonts
    jetbrains-mono
    nerd-fonts.jetbrains-mono
  ];
  imports = [];
}