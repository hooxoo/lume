local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    TelescopeNormal = { fg = fg.text, bg = bg.surface0 },
    TelescopeBorder = { fg = bg.surface0, bg = bg.surface0 },

    TelescopePromptNormal = { fg = fg.text, bg = bg.surface1 },
    TelescopePromptBorder = { fg = bg.surface1, bg = bg.surface1 },
    TelescopePromptTitle = { fg = bg.base, bg = ac.rose, bold = true },
    TelescopePromptPrefix = { fg = ac.rose, bg = bg.surface1 },
    TelescopePromptCounter = { fg = fg.overlay, bg = bg.surface1 },

    TelescopePreviewNormal = { fg = fg.text, bg = bg.mantle },
    TelescopePreviewBorder = { fg = bg.mantle, bg = bg.mantle },
    TelescopePreviewTitle = { fg = bg.base, bg = ac.sage, bold = true },

    TelescopeResultsNormal = { fg = fg.text, bg = bg.surface0 },
    TelescopeResultsBorder = { fg = bg.surface0, bg = bg.surface0 },
    TelescopeResultsTitle = { fg = bg.base, bg = ac.lavender, bold = true },

    TelescopeSelection = { fg = fg.text, bg = bg.surface1, bold = true },
    TelescopeSelectionCaret = { fg = ac.rose, bg = bg.surface1 },
    TelescopeMultiSelection = { fg = fg.text, bg = bg.surface1 },
    TelescopeMultiIcon = { fg = ac.rose },

    TelescopeMatching = { fg = ac.peach, bold = true },
  }
end

return M
