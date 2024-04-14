{ config, pkgs, ... }:

{
  imports = [
    ./hypr
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
    gh           # GitHub CLI
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Primary shell
  programs.zsh = {
    enable = true;
    enableVteIntegration = true; # Terminal integration
    autocd = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      off = "shutdown now";
      home-update = "home-manager switch --flake ~/.dotfiles";
    };

    # QOL
    oh-my-zsh = {
      enable = true;
      theme = "obraun";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
