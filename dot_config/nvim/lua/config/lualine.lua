local present, lualine = pcall(require, "lualine")

lualine.setup {
  options = {
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
  },
}

