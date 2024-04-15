{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    extraConfig = {
      user = {
        name = "Jacob Busby";
        email = "98309644+Jacob-P-Busby@users.noreply.github.com";
        signingkey = "4A45571AD335FE885E88DA3289DE207D0E5DF543";
      };
      commit.gpgsign = true;
      push.autoSetupRemote = true;
    };
  };

  programs.gh = {
    enable = true;
  };
}
