{
  description = "6744 Developer Environments";

  inputs = {
    # Don't know what I'll do for this yet,
    # this'll be running under WSL most likely,
    # but I'm not sure if I'll run NixOS WSL
    # or Ubuntu WSL with Nix
    nixpkgs.url = ""; 
    home-manager.url = "github:nix-community/home-manager"
  };
  outputs = { self, nixpkgs, home-manager }:{
    homeConfigurations = {
      user = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs
          { system = "x86_64-linux"; };
        modules = [ ./users/user/default.nix ];
      };
    };
  }
}