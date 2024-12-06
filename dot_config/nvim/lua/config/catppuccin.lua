local present, catppuccin = pcall(require, "catppuccin")

catppuccin.setup {
  transparent_background = true,
  highlight_overrides = {
    all = function(colors)
      return {
        TelescopeMatching = { fg = colors.flamingo },
        TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

        TelescopePromptPrefix = { bg = colors.surface0 },
        TelescopePromptNormal = { bg = colors.surface0 },
        TelescopeResultsNormal = { bg = colors.mantle },
        TelescopePreviewNormal = { bg = colors.mantle },
        TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
        TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
        TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
        TelescopePromptTitle = { bg = colors.red, fg = colors.mantle },
        TelescopeResultsTitle = { fg = colors.mantle },
        TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },

        NvimTreeNormal = { bg = colors.mantle },
        NvimTreeGitNewIcon = { fg = colors.blue },
        NvimTreeGitDirtyIcon = { fg = colors.red },
        NvimTreeGitStagedIcon = { fg = colors.green },
        NvimTreeGitDeletedIcon = { fg = colors.subtext0 },

        -- CmpNormal = { bg = colors.crust },
        -- CmpDocumentation = { bg = colors.crust },
        -- CmpDocumentationBorder = { bg = colors.crust, fg = colors.blue },
      }
    end,
  },
}

