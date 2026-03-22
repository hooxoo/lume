local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    NotifyERRORBorder = { fg = ac.ember },
    NotifyWARNBorder = { fg = ac.honey },
    NotifyINFOBorder = { fg = ac.sky },
    NotifyDEBUGBorder = { fg = fg.overlay },
    NotifyTRACEBorder = { fg = ac.lavender },

    NotifyERRORIcon = { fg = ac.ember },
    NotifyWARNIcon = { fg = ac.honey },
    NotifyINFOIcon = { fg = ac.sky },
    NotifyDEBUGIcon = { fg = fg.overlay },
    NotifyTRACEIcon = { fg = ac.lavender },

    NotifyERRORTitle = { fg = ac.ember, bold = true },
    NotifyWARNTitle = { fg = ac.honey, bold = true },
    NotifyINFOTitle = { fg = ac.sky, bold = true },
    NotifyDEBUGTitle = { fg = fg.overlay, bold = true },
    NotifyTRACETitle = { fg = ac.lavender, bold = true },

    NotifyERRORBody = { fg = fg.text, bg = bg.surface0 },
    NotifyWARNBody = { fg = fg.text, bg = bg.surface0 },
    NotifyINFOBody = { fg = fg.text, bg = bg.surface0 },
    NotifyDEBUGBody = { fg = fg.text, bg = bg.surface0 },
    NotifyTRACEBody = { fg = fg.text, bg = bg.surface0 },

    NotifyBackground = { bg = bg.surface0 },
  }
end

return M
