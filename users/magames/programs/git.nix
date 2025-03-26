{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "MattheDev53";
    userEmail = "matthew.c.albrecht@gmail.com";
  };
}
