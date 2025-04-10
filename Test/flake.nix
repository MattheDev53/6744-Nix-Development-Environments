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
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.flutter
          ];
        };
        packages = {
          # Example for building a Linux desktop app:
          linux = pkgs.stdenv.mkDerivation {
            name = "pathplanner";
            src = pkgs.fetchFromGitHub {
              owner = "mjansen4857";
              repo = "pathplanner";
              rev = "main";
              sha256 = "sha256-wfkUW7W7Yffz+ejzOL5lFwx2O8MOsi8zJDakS1XRLFA=";
            };

            buildInputs = [
              pkgs.flutter
            ];

            buildPhase = ''
              export HOME=$(pwd)
              flutter build linux
            '';

            installPhase = ''
              mkdir -p $out
              cp -r build/linux/x64/release/bundle $out
            '';
          };
        };
      }
    );
}
