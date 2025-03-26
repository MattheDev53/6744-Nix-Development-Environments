{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Username";
    userEmail = "username@mail.server.com";
  };
}
