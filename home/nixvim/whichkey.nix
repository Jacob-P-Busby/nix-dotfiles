{ ... }:

{
  programs.nixvim.plugins.which-key = {
    enable = true;

    labels = {
      "<leader>j" = "Prev Diagnosis";
      "<leader>k" = "Next Diagnosis";

      "K" = "Hover Information";
      "gd" = "[G]oto [D]efinition";
      "gD" = "[G]oto References";
      "gi" = "[G]oto [I]mplementation";
      "gt" = "[G]oto [T]ype";


      "<leader>T" = "[T]elescope";
    };
  };
}
