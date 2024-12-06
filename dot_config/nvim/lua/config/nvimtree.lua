local present, nvimtree = pcall(require, "nvim-tree")

local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.5

nvimtree.setup {
  sort_by = "case_sensitive",
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = true,
  sync_root_with_cwd = true,
  git = {
    enable = true,
    ignore = true,
  },
  filters = {
    dotfiles = false,
  },
  filesystem_watchers = {
    enable = true,
  },
  view = {
    number = false,
    relativenumber = false,
    adaptive_size = true,
    signcolumn = "yes",
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * WIDTH_RATIO
        local window_h = screen_h * HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
        return {
          border = "rounded",
          relative = "editor",
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
      end,
    },
  },
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")

    local map = vim.keymap.set
    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    local function edit_or_open()
      local node = api.tree.get_node_under_cursor()

      if node.nodes ~= nil then
        -- expand or collapse folder
        api.node.open.edit()
      else
        -- open file
        api.node.open.edit()
        -- Close the tree if file was opened
        api.tree.close()
      end
    end

    -- open as vsplit on current node
    local function vsplit_open()
      local node = api.tree.get_node_under_cursor()

      if node.nodes ~= nil then
        -- expand or collapse folder
        api.node.open.edit()
      else
        -- open file as vsplit
        api.node.open.vertical()
      end

      -- -- Finally refocus on tree if it was lost
      -- api.tree.focus()
    end

    local function hsplit_open()
      local node = api.tree.get_node_under_cursor()

      if node.nodes ~= nil then
        -- expand or collapse folder
        api.node.open.edit()
      else
        -- open file as vsplit
        api.node.open.horizontal()
      end

      -- -- Finally refocus on tree if it was lost
      -- api.tree.focus()
    end

    api.config.mappings.default_on_attach(bufnr)

    map("n", "l", edit_or_open, opts("Edit Or Open"))
    map("n", "<leader>e", api.tree.close, opts("Close"))
  end
}

local map = vim.keymap.set

map("n", "<leader>e", "<cmd> NvimTreeOpen <CR>", { desc = "File tree" })

