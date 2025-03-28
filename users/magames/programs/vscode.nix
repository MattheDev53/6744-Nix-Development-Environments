{ inputs, config, pkgs, lib, ... }:

{
programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        sainnhe.gruvbox-material
        vscodevim.vim
        jnoortheen.nix-ide
        arrterian.nix-env-selector
      ];
      userSettings = {
        "editor.fontFamily" = "JetBrains Mono";
      };
    };
  };
}
