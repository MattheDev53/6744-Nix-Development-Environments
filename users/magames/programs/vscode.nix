{ inputs, config, pkgs, lib, ... }:

{
programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.magames = {
      extensions = with pkgs.vscode-extensions; [
        sainnhe.gruvbox-material
  
        vscodevim.vim
        bbenoist.nix
        arrterian.nix-env-selector
  
        vscjava.vscode-java-pack
        ms-python.python
        ms-python.black-formatter
      ];
      userSettings = {
        "editor.fontFamily" = "JetBrains Mono";
        "editor.fontLigatures" = true;
        "workbench.colorTheme" = "Gruvbox Material Dark";
      };
    };
  };
}
