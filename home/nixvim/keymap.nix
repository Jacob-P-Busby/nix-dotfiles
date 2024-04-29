{ ... }:

{
  programs.nixvim.keymaps = [
    {
      action = "<cmd>NvimTreeToggle<CR>";
      mode = [ "n" ];
      key = "<Leader>e";
      options = {
        desc = "Open File [E]xplorer";
        silent = true;
      };
    }

    {
      action = "<Esc>";
      mode = [ "i" ];
      key = "jk";
      options = {
        desc = "Escape Insert Mode";
        silent = true;
      };
    }
  ];
}
