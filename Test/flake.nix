{
  description = "Build Flutter app from GitHub with Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
        flutterPackage = pkgs.flutter.override { channel = "stable"; }; # Or "beta", "dev"
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            flutterPackage
          ];
        };

        packages = {
          # Example for building a Linux desktop app:
          linux = pkgs.stdenv.mkDerivation {
            name = "my-flutter-app-linux";
            src = pkgs.fetchFromGitHub {
              owner = "mjansen4857";
              repo = "pathplanner";
              sha256 = "";
            };

            buildInputs = [
              flutterPackage
            ];

            buildPhase = ''
              flutter build linux
            '';

            installPhase = ''
              mkdir -p $out
              cp -r build/linux/x64/release/bundle $out
            '';
          };
        };

        defaultPackage = self.packages.linux; 
      }
    );
}
