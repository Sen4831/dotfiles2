vim.loader.enable()

require("core.settings")
require("core.plugins")

vim.cmd.colorscheme("catppuccin")

vim.schedule(
  function()
    require("core.mappings")
  end
)

