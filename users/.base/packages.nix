{ inputs, config, pkgs, lib, ... }:

{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    # Fonts
    jetbrains-mono
    nerd-fonts.jetbrains-mono

    # FRC Packages
    inputs.frc-nix.packages.x86_64-linux.pathplanner
  ];
}