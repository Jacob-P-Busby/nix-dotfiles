return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
    enabled = false,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "nix",
  		},
  	},
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
    config = function ()
      vim.cmd [[
        highlight RainbowDelimiterRed guifg=#f38ba8
        highlight RainbowDelimiterYellow guifg=#f9e2af
        highlight RainbowDelimiterBlue guifg=#89b4fa
        highlight RainbowDelimiterOrange guifg=#fab387
        highlight RainbowDelimiterGreen guifg=#a6e3a1
        highlight RainbowDelimiterViolet guifg=#cba6f7
        highlight RainbowDelimiterCyan guifg=#94e2d5
      ]]
    end
  },
}
