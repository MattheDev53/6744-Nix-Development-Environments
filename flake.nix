{
  description = "6744 Developer Environments";

  inputs = {
    # Don't know what I'll do for this yet,
    # this'll be running under WSL most likely,
    # but I'm not sure if I'll run NixOS WSL
    # or Ubuntu WSL with Nix
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, home-manager, ... }:
  {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
    homeConfigurations = {
      "user" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs
          { system = "x86_64-linux"; };
        modules = [ ./users/user/default.nix ];
      };
      "magames" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs
          { system = "x86_64-linux"; };
        modules = [ ./users/magames/default.nix ];
      };
    };
  };
}