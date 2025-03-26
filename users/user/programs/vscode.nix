{ inputs, config, pkgs, lib, ... }:

{
programs.vscode = {
    enable = true;
    profiles.user = {
      extensions = with pkgs.vscode-extensions; [
        sainnhe.gruvbox-material
  
        bbenoist.nix
        arrterian.nix-env-selector
  
        vscjava.vscode-java-pack
      ];
      userSettings = {
        "editor.fontFamily" = "JetBrains Mono";
        "editor.fontLigatures" = true;
        "workbench.colorTheme" = "Gruvbox Material Dark";
      };
    };
  };
}
