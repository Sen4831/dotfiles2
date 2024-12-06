local path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(path)

require("lazy").setup {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require "config.catppuccin"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "config.nvimtree"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    dependencies = {
      {
        "nvim-lua/plenary.nvim"
      },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable "make" == 1
        end,
      },
    },
    config = function()
      require "config.telescope"
    end,
  },
  {
    "folke/flash.nvim",
    event = "BufReadPre",
    config = function()
      require "config.flash"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    config = function()
      require "config.treesitter"
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require "config.autopairs"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require "config.autotag"
    end,
  },
  {
    "ThePrimeagen/harpoon",
    event = "BufReadPre",
    config = function()
      require "config.harpoon"
    end,
  },
  -- {
  --   "levouh/tint.nvim",
  --   event = "BufReadPre",
  --   config = function()
  --     require "config.tint"
  --   end,
  -- },
  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require "config.lualine"
    end,
  },
  {
    "folke/noice.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = "VeryLazy",
    config = function()
      require "config.noice"
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require "config.whichkey"
    end,
  },
  {
    "folke/zen-mode.nvim",
    event = "BufReadPre",
    config = function()
      require "config.zen"
    end,
  },
  {
    "amitds1997/remote-nvim.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require "config.remote"
    end,
  },
  {
    "https://codeberg.org/esensar/nvim-dev-container",
    event = "VeryLazy",
    config = function()
      require "config.devcontainer"
    end,
  },
  {
    "alexghergh/nvim-tmux-navigation",
    event = "VeryLazy",
    config = function()
      require "config.tmuxnavigator"
    end,
  },
}

