local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local ac = p.accents

  return {
    OilDir = { fg = ac.sky, bold = true },
    OilDirIcon = { fg = ac.sky },
    OilLink = { fg = ac.teal },
    OilLinkTarget = { fg = fg.overlay, italic = true },
    OilFile = { fg = fg.text },
    OilSocket = { fg = ac.lavender },

    -- Change type indicators
    OilCreate = { fg = ac.sage },
    OilDelete = { fg = ac.ember },
    OilMove = { fg = ac.honey },
    OilCopy = { fg = ac.sky },
    OilChange = { fg = ac.sky },
    OilRestore = { fg = ac.teal },
    OilPurge = { fg = ac.ember, bold = true },
    OilTrash = { fg = ac.ember },
    OilTrashSourcePath = { fg = fg.overlay, italic = true },
  }
end

return M
