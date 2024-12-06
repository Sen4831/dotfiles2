local present, harpoon = pcall(require, "harpoon")

harpoon.setup {}

local map = vim.keymap.set

map("n", "<leader>h", require("harpoon.mark").add_file, { desc = "Harpoon add file" })
map("n", "<leader>`", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon toggle menu" })
map("n", "<leader>1", function () require("harpoon.ui").nav_file(1) end, { desc = "Harpoon go to 1 file" })
map("n", "<leader>2", function () require("harpoon.ui").nav_file(2) end, { desc = "Harpoon go to 2 file" })
map("n", "<leader>3", function () require("harpoon.ui").nav_file(3) end, { desc = "Harpoon go to 3 file" })
map("n", "<leader>4", function () require("harpoon.ui").nav_file(4) end, { desc = "Harpoon go to 4 file" })

