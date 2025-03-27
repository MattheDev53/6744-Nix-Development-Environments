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
      "user" = home-manager.lib.homeManagerConfiguration {
        pkgs = pkgs; # Important: Pass pkgs here
        modules = [ ./users/user/default.nix ];
      };
      "magames" = home-manager.lib.homeManagerConfiguration {
        pkgs = pkgs; # Important: Pass pkgs here
        modules = [ ./users/magames/default.nix ];
      };
    };
  };
}
