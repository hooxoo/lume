local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    FlashBackdrop = { fg = fg.overlay },
    FlashLabel = { fg = bg.crust, bg = ac.peach, bold = true },
    FlashMatch = { fg = ac.sky, bg = bg.surface1 },
    FlashCurrent = { fg = fg.text, bg = bg.surface1, bold = true },
    FlashPrompt = { fg = fg.text, bg = bg.surface0 },
    FlashPromptIcon = { fg = ac.lavender },
    FlashCursor = { fg = bg.base, bg = fg.text },
  }
end

return M
