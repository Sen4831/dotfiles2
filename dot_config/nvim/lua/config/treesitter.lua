local present, treesitter = pcall(require, "nvim-treesitter.configs")

treesitter.setup {
  highlight = { enable = true },
  indent = { enable = true },
  auto_install = true,
  sync_install = false,
  ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "jsonc",
    "html",
    "css",
    "javascript",
    "typescript",
    "python",
  },
}

