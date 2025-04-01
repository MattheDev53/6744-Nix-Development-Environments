{ inputs, config, pkgs, lib, ... }:

{
programs.vscode = {
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        catppuccin.catppuccin-vsc-icons
        catppuccin.catppuccin-vsc-icons

        jnoortheen.nix-ide
        arrterian.nix-env-selector
        bbenoist.nix
      ];
      userSettings = {
        "workbench.iconTheme" = "catppuccin-mocha";
        "workbench.colorTheme" = "Catppuccin Mocha";
      };
    };
  };
}
