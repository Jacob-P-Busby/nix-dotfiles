{ config, pkgs, ... }:

{
  imports = [
    ./hypr # Window manager
    ./zsh  # Primary shell
    ./git  # Git options
  ];
  
  home.username = "jacob";
  home.homeDirectory = "/home/jacob";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    # GUI
    logseq       # Notes
    firefox      # Browser
    kitty        # Terminal
    waybar       # Top Bar
    libreoffice  # Office suite
    hyprpaper    # Wallpaper utility

    # CL
    wl-clipboard # Copy & Paste
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
