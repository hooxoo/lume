local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents
  local util = require("lume.util")

  return {
    -- Sign column signs
    GitSignsAdd = { fg = ac.sage },
    GitSignsChange = { fg = ac.sky },
    GitSignsDelete = { fg = ac.ember },
    GitSignsTopdelete = { fg = ac.ember },
    GitSignsChangedelete = { fg = ac.sky },
    GitSignsUntracked = { fg = ac.honey },

    -- Line number variants (same fg)
    GitSignsAddNr = { fg = ac.sage },
    GitSignsChangeNr = { fg = ac.sky },
    GitSignsDeleteNr = { fg = ac.ember },
    GitSignsTopdeleteNr = { fg = ac.ember },
    GitSignsChangedeleteNr = { fg = ac.sky },
    GitSignsUntrackedNr = { fg = ac.honey },

    -- Line highlight variants (alpha blended onto mantle)
    GitSignsAddLn = { fg = ac.sage, bg = util.blend(ac.sage, bg.mantle, 0.12) },
    GitSignsChangeLn = { fg = ac.sky, bg = util.blend(ac.sky, bg.mantle, 0.12) },
    GitSignsDeleteLn = { fg = ac.ember, bg = util.blend(ac.ember, bg.mantle, 0.12) },
    GitSignsTopdeleteLn = { fg = ac.ember, bg = util.blend(ac.ember, bg.mantle, 0.12) },
    GitSignsChangedeleteLn = { fg = ac.sky, bg = util.blend(ac.sky, bg.mantle, 0.12) },
    GitSignsUntrackedLn = { fg = ac.honey, bg = util.blend(ac.honey, bg.mantle, 0.12) },

    -- Inline word-diff highlights
    GitSignsAddInline = { bg = util.blend(ac.sage, bg.base, 0.25) },
    GitSignsChangeInline = { bg = util.blend(ac.sky, bg.base, 0.25) },
    GitSignsDeleteInline = { bg = util.blend(ac.ember, bg.base, 0.25) },

    -- Blame
    GitSignsCurrentLineBlame = { fg = fg.overlay, italic = true },
    GitSignsCurrentLineBlameNc = { fg = fg.overlay },
  }
end

return M
