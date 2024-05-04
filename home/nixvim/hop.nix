{ ... }:

{
  programs.nixvim = {
    plugins.hop = {
      enable = true;
    };

    keymaps = [
      {
        key = "f";
        action="<cmd>HopWordAC<CR>";
        options.remap = true;
      }

      {
        key = "F";
        action="<cmd>HopWordBC<CR>";
        options.remap = true;
      }

      {
        key = "t";
        action="<cmd>HopAnywhereAC<CR>";
        options.remap = true;
      }

      {
        key = "T";
        action="<cmd>HopAnywhereBC<CR>";
        options.remap = true;
      }
    ];
  };
}
