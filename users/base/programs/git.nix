{ inputs, config, pkgs, lib, ... }:

{
  programs.git = {
    enable = lib.mkDefault true;
  };
}
