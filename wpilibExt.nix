{ pkgs ? import <nixpkgs> }:

pkgs.vscode-utils.buildVscodeExtension {
  pname = "my-extension";  # A unique name for your extension in Nixpkgs
  version = "1.2.3";       # Match the extension version

  src = pkgs.fetchFromGitHub {
    owner = "owner";        # Replace with the GitHub repository owner
    repo = "repo";         # Replace with the GitHub repository name
    rev = "v1.2.3";          # Replace with the release tag
    hash = "sha256-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; # Replace with the actual SHA256 hash of the .vsix file
  };

  # If `fetchFromGitHub` doesn't work, you may need `fetchurl`
  # src = pkgs.fetchurl {
  #   url = "https://github.com/owner/repo/releases/download/v1.2.3/my-extension-1.2.3.vsix";
  #   sha256 = "sha256-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  # };

  name = "my-extension-1.2.3"; # The name of the built package

  meta = {
    description = "My custom VSCode extension";
    homepage = "https://github.com/owner/repo";
    license = pkgs.lib.licenses.mit; # Replace with the correct license
    maintainers = with pkgs.lib.maintainers; [  # Add your Nixpkgs maintainer details if applicable
      # yourNixpkgsUsername
    ];
  };
}
