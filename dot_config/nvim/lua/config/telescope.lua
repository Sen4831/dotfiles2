local present, telescope = pcall(require, "telescope")

telescope.setup {
  defaults = {
    -- initial_mode = "normal",
    prompt_prefix = "  ",
    selection_caret = "  ",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
      },
    },
    file_ignore_patterns = {
      "node_modules",
      ".venv",
      ".local",
      ".cache",
      ".oh-my-zsh",
    },
    mappings = {
      n = {
        ["q"] = require("telescope.actions").close,
        ["<C-c>"] = nil,
      }
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
}

local map = vim.keymap.set

map("n", "<leader>ff", "<cmd> Telescope find_files <CR>", { desc = "Find files" })
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd> Telescope help_tags <CR>", { desc = "Help tags" })
map("n", "<leader>fr", "<cmd> Telescope oldfiles <CR>", { desc = "Old files" })
map("n", "<leader>gb", "<cmd> Telescope git_branches <CR>", { desc = "Git branches" })
map("n", "<leader>gc", "<cmd> Telescope git_commits <CR>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd> Telescope git_status <CR>", { desc = "Git status" })
