{ inputs, config, pkgs, lib, ... }:

{
programs.vscode = {
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        sainnhe.gruvbox-material
        vscodevim.vim

        jnoortheen.nix-ide
        arrterian.nix-env-selector
        bbenoist.nix
      ];
      userSettings = {
        "workbench.colorTheme" = "Gruvbox Material Dark";
      };
    };
  };
}
