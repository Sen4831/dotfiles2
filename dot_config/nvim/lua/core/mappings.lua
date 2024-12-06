local map = vim.keymap.set

map("i", "jj", "<ESC>", { desc = "Exit insert mode" })
map("n", "U", "<C-r>", { desc = "Redo operation"})
map("n", "<leader>h", "<cmd> nohlsearch <CR>", { desc = "Disable highlight" })
map("n", "|", "<cmd> vsplit<CR>", { desc = "Split vertically" })
map("n", "\\", "<cmd> split<CR>", { desc = "Split horizontally" })

map("n", "<Tab>", "<C-w>", { desc = "Window" })
map("n", "<leader>w", "<cmd> w <CR>", { desc = "File save" })
map("n", "<leader>q", "<C-w><C-q>", { desc = "File close" })
map("n", "<leader>n", "<cmd> enew <CR>", { desc = "File new" })

