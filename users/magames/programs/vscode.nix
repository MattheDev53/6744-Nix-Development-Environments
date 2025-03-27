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
        "extensions.autoUpdate" = false;
        "extensions.autoCheckUpdates" = false;
        "extensions.ignoreRecommendations" = true;
        "update.mode" = "none";
        "update.showReleaseNotes" = false;
        "http.systemCertificates" = false;
        "git.autofetch" = true;
        "java.completion.favoriteStaticMembers" = [
          "org.junit.Assert.*"
          "org.junit.Assume.*"
          "org.junit.jupiter.api.Assertions.*"
          "org.junit.jupiter.api.Assumptions.*"
          "org.junit.jupiter.api.DynamicContainer.*"
          "org.junit.jupiter.api.DynamicTest.*"
          "org.mockito.Mockito.*"
          "org.mockito.ArgumentMatchers.*"
          "org.mockito.Answers.*"
        ];
        "files.autoSave" = "afterDelay";
        "java.completion.matchCase" = "off";
        "git.ignoreMissingGitWarning" = true;
        "workbench.colorTheme" = "Gruvbox Material Dark";
        "settingsSync.ignoredSettings" = [];
        "editor.fontFamily" = "JetBrains Mono";
        "workbench.iconTheme" = "gruvbox-material-icon-theme";
        "redhat.telemetry.enabled" = false;
        "chat.commandCenter.enabled" = false;
        "editor.fontLigatures" = true;
        "git.confirmSync" = false;
        "diffEditor.ignoreTrimWhitespace" = false;
        "wpilib.autoStartRioLog" = false;
        "editor.tabSize" = 2;
      };
    };
  };
}
