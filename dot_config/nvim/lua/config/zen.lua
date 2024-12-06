local present, zenmode = pcall(require, "zen-mode")

zenmode.setup {}

local map = vim.keymap.set

map("n", "<leader>z", "<cmd> ZenMode <CR>", { desc = "Zen mode toggle" })

