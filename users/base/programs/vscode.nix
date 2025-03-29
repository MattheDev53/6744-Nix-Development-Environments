{ inputs, config, pkgs, lib, ... }:

{
programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        vscjava.vscode-java-pack
        
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
        "settingsSync.ignoredSettings" = [];
        "workbench.iconTheme" = "gruvbox-material-icon-theme";
        "redhat.telemetry.enabled" = false;
        "chat.commandCenter.enabled" = false;
        "editor.fontLigatures" = true;
        "git.confirmSync" = false;
        "diffEditor.ignoreTrimWhitespace" = false;
        "wpilib.autoStartRioLog" = false;
        "editor.fontFamily" = "JetBrains Mono";
        "editor.tabSize" = 2;
      };
    };
  };
}
