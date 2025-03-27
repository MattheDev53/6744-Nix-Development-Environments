{ pkgs ? import <nixpkgs> {} }:

pkgs.vscode-utils.buildVscodeExtension {
  pname = "wpilibsuite.vscode-wpilib";  # A unique name for your extension in Nixpkgs
  version = "2025.3.1";       # Match the extension version

  src = pkgs.fetchFromGitHub {
    owner = "wpilibsuite";
    repo = "vscode-wpilib";
    rev = "v2025.3.1";          # Replace with the release tag
    hash = "sha256-529F5404AE7334B85A903CAA2E41607BB42CF03500F6D21FCBF33AD69727E8FD"; # Replace with the actual SHA256 hash of the .vsix file
  };

  # If `fetchFromGitHub` doesn't work, you may need `fetchurl`
  # src = pkgs.fetchurl {
  #   url = "https://github.com/owner/repo/releases/download/v1.2.3/my-extension-1.2.3.vsix";
  #   sha256 = "sha256-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  # };

  name = "wpilibsuite.vscode-wpilib"; # The name of the built package

  meta = {
    description = "WPILib Extension";
    homepage = "https://github.com/wpilibsuite/vscode-wpilib";
    license = pkgs.lib.licenses.bsd3; # Replace with the correct license
    maintainers = with pkgs.lib.maintainers; [  # Add your Nixpkgs maintainer details if applicable
      # yourNixpkgsUsername
    ];
  };
}
