{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    extraConfig = {
      user.signingkey = "9394DCCB76F75449";
      commit.gpgsign = true;
    };
  };
}
