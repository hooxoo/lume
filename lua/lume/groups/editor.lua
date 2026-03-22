local M = {}

function M.get(p, config)
  local bg = p.backgrounds
  local fg = p.foregrounds
  local ac = p.accents
  local sp = p.special
  local util = require("lume.util")

  local base_bg = config.transparent and "NONE" or bg.base
  local nc_bg = config.transparent and "NONE" or bg.mantle

  return {
    -- Core
    Normal = { fg = fg.text, bg = base_bg },
    NormalFloat = { fg = fg.text, bg = bg.surface0 },
    NormalNC = { fg = fg.text, bg = nc_bg },
    FloatBorder = { fg = bg.surface2, bg = bg.surface0 },
    FloatTitle = { fg = ac.lavender, bg = bg.surface0, bold = true },

    -- Cursor & line
    Cursor = { fg = bg.base, bg = sp.cursor },
    CursorIM = { fg = bg.base, bg = sp.cursor },
    CursorLine = { bg = bg.surface0 },
    CursorColumn = { bg = bg.surface0 },
    CursorLineNr = { fg = ac.lavender, bold = true },
    LineNr = { fg = fg.overlay },
    LineNrAbove = { fg = fg.overlay },
    LineNrBelow = { fg = fg.overlay },

    -- Columns & signs
    SignColumn = { fg = fg.overlay, bg = base_bg },
    FoldColumn = { fg = fg.overlay, bg = base_bg },
    ColorColumn = { bg = bg.surface0 },

    -- Selection & search
    Visual = { bg = sp.selection },
    VisualNOS = { bg = sp.selection },
    Search = { fg = bg.base, bg = ac.honey },
    IncSearch = { fg = bg.base, bg = ac.peach },
    CurSearch = { fg = bg.base, bg = ac.peach },
    Substitute = { fg = bg.base, bg = ac.rose },

    -- Status & tab lines
    StatusLine = { fg = fg.subtext, bg = bg.mantle },
    StatusLineNC = { fg = fg.overlay, bg = bg.mantle },
    TabLine = { fg = fg.overlay, bg = bg.mantle },
    TabLineFill = { bg = bg.crust },
    TabLineSel = { fg = fg.text, bg = bg.base, bold = true },

    -- Window
    WinSeparator = { fg = bg.surface1 },
    WinBar = { fg = fg.text, bg = base_bg },
    WinBarNC = { fg = fg.overlay, bg = nc_bg },
    VertSplit = { fg = bg.surface1 },

    -- Popup menu
    Pmenu = { fg = fg.text, bg = bg.surface0 },
    PmenuSel = { fg = fg.text, bg = bg.surface1, bold = true },
    PmenuSbar = { bg = bg.surface1 },
    PmenuThumb = { bg = bg.surface2 },
    PmenuKind = { fg = ac.lavender, bg = bg.surface0 },
    PmenuKindSel = { fg = ac.lavender, bg = bg.surface1 },
    PmenuExtra = { fg = fg.subtext, bg = bg.surface0 },
    PmenuExtraSel = { fg = fg.subtext, bg = bg.surface1 },

    -- Diff (alpha blended onto base background)
    DiffAdd = { bg = util.blend(ac.sage, bg.base, 0.15) },
    DiffChange = { bg = util.blend(ac.sky, bg.base, 0.15) },
    DiffDelete = { bg = util.blend(ac.ember, bg.base, 0.15) },
    DiffText = { bg = util.blend(ac.sky, bg.base, 0.30) },

    -- Spell
    SpellBad = { undercurl = true, sp = ac.ember },
    SpellCap = { undercurl = true, sp = ac.honey },
    SpellLocal = { undercurl = true, sp = ac.sky },
    SpellRare = { undercurl = true, sp = ac.teal },

    -- File system
    Directory = { fg = ac.sky },

    -- Buffer UI
    EndOfBuffer = { fg = bg.base },
    NonText = { fg = bg.surface1 },
    SpecialKey = { fg = bg.surface2 },
    Whitespace = { fg = bg.surface1 },
    Conceal = { fg = fg.overlay },

    -- Matching
    MatchParen = { fg = ac.peach, bold = true },

    -- Title
    Title = { fg = ac.lavender, bold = true },

    -- Messages
    MsgArea = { fg = fg.text },
    ModeMsg = { fg = fg.text, bold = true },
    MoreMsg = { fg = ac.sage, bold = true },
    Question = { fg = ac.lavender },
    WarningMsg = { fg = ac.honey },
    ErrorMsg = { fg = ac.ember, bold = true },

    -- Folds
    Folded = { fg = fg.overlay, bg = bg.surface0 },

    -- Quickfix
    qfFileName = { fg = ac.sky },
    qfLineNr = { fg = ac.lavender },
  }
end

return M
