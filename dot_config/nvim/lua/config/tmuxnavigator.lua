local present, nvim_tmux_nav = pcall(require, "nvim-tmux-navigation")

nvim_tmux_nav.setup {}

local map = vim.keymap.set

map("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, { desc = "Navigate left tmux pane" })
map("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, { desc = "Navigate down tmux pane" })
map("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, { desc = "Navigate up tmux pane" })
map("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, { desc = "Navigate right tmux pane" })

