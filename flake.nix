{
  description = "6744 Developer Environments";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
  in
  {
    homeConfigurations = {
      "magames" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ 
          ./users/base/default.nix
          ./users/magames/default.nix
        ];
      };
      "leo" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./users/base/default.nix
          ./users/leo/default.nix
        ];
      }
    };
  };
}
