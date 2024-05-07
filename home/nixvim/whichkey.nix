{ ... }:

{
  programs.nixvim.plugins.which-key = {
    enable = true;

    keyLabels = {
      "<leader>j" = "Prev Diagnosis";
      "<leader>k" = "Next Diagnosis";

      "K" = "Hover Information";
      "gd" = "[G]oto [D]efinition";
      "gD" = "[G]oto References";
      "gi" = "[G]oto [I]mplementation";
      "gt" = "[G]oto [T]ype";


      "<leader>t" = "[T]elescope";
    };
  };
}
