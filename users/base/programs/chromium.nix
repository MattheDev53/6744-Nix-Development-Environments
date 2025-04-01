{ inputs, config, pkgs, lib, ... }:

{
  programs.chromium = {
    enable = lib.mkDefault true;
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
    ];
  };
}