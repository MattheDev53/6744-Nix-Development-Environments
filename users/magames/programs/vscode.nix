{ inputs, config, pkgs, lib, ... }:

{
programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        sainnhe.gruvbox-material
  
        vscodevim.vim
        bbenoist.nix
        jnoortheen.nix-ide
        arrterian.nix-env-selector
  
        vscjava.vscode-java-pack
        # No clue why these guys don't auto install
        vscjava.vscode-java-debug
        vscjava.vscode-java-dependency
        vscjava.vscode-java-test
        vscjava.vscode-gradle
        vscjava.vscode-maven
        redhat.java
      ];
      userSettings = {
        "editor.fontFamily" = "JetBrains Mono";
        "editor.fontLigatures" = true;
        "workbench.colorTheme" = "Gruvbox Material Dark";
      };
    };
  };
}
