local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    -- mini.statusline
    MiniStatuslineModeNormal = { fg = bg.crust, bg = ac.lavender, bold = true },
    MiniStatuslineModeInsert = { fg = bg.crust, bg = ac.sage, bold = true },
    MiniStatuslineModeVisual = { fg = bg.crust, bg = ac.rose, bold = true },
    MiniStatuslineModeReplace = { fg = bg.crust, bg = ac.ember, bold = true },
    MiniStatuslineModeCommand = { fg = bg.crust, bg = ac.honey, bold = true },
    MiniStatuslineModeOther = { fg = bg.crust, bg = ac.teal, bold = true },
    MiniStatuslineDevinfo = { fg = fg.subtext, bg = bg.surface1 },
    MiniStatuslineFilename = { fg = fg.subtext, bg = bg.mantle },
    MiniStatuslineFileinfo = { fg = fg.subtext, bg = bg.surface1 },
    MiniStatuslineInactive = { fg = fg.overlay, bg = bg.mantle },

    -- mini.tabline
    MiniTablineCurrent = { fg = fg.text, bg = bg.base, bold = true },
    MiniTablineVisible = { fg = fg.subtext, bg = bg.surface0 },
    MiniTablineHidden = { fg = fg.overlay, bg = bg.mantle },
    MiniTablineModifiedCurrent = { fg = ac.sage, bg = bg.base, bold = true },
    MiniTablineModifiedVisible = { fg = ac.sage, bg = bg.surface0 },
    MiniTablineModifiedHidden = { fg = ac.sage, bg = bg.mantle },
    MiniTablineFill = { bg = bg.crust },
    MiniTablineTabpagesection = { fg = bg.crust, bg = ac.lavender, bold = true },

    -- mini.cursorword
    MiniCursorword = { bg = bg.surface1 },
    MiniCursorwordCurrent = { bg = bg.surface1 },

    -- mini.indentscope
    MiniIndentscopeSymbol = { fg = ac.lavender },

    -- mini.pick
    MiniPickBorder = { fg = bg.surface2, bg = bg.surface0 },
    MiniPickBorderBusy = { fg = ac.honey, bg = bg.surface0 },
    MiniPickBorderText = { fg = ac.lavender, bg = bg.surface0, bold = true },
    MiniPickIconDirectory = { fg = ac.sky },
    MiniPickIconFile = { fg = fg.text },
    MiniPickHeader = { fg = ac.lavender, bold = true },
    MiniPickMatchCurrent = { bg = bg.surface1, bold = true },
    MiniPickMatchMarked = { fg = ac.sage, bg = bg.surface1 },
    MiniPickMatchRanges = { fg = ac.peach, bold = true },
    MiniPickNormal = { fg = fg.text, bg = bg.surface0 },
    MiniPickPreviewLine = { bg = bg.surface1 },
    MiniPickPreviewRegion = { bg = bg.surface1 },
    MiniPickPrompt = { fg = ac.lavender, bg = bg.surface0 },

    -- mini.jump / mini.jump2d
    MiniJump = { fg = bg.crust, bg = ac.peach, bold = true },
    MiniJump2dSpot = { fg = ac.peach, bold = true },
    MiniJump2dSpotAhead = { fg = ac.teal },
    MiniJump2dSpotUnique = { fg = ac.peach, bold = true },
    MiniJump2dDim = { fg = fg.overlay },

    -- mini.hipatterns
    MiniHipatternsFixme = { fg = bg.crust, bg = ac.ember, bold = true },
    MiniHipatternsHack = { fg = bg.crust, bg = ac.honey, bold = true },
    MiniHipatternsNote = { fg = bg.crust, bg = ac.sky, bold = true },
    MiniHipatternsTodo = { fg = bg.crust, bg = ac.sage, bold = true },

    -- mini.diff
    MiniDiffSignAdd = { fg = ac.sage },
    MiniDiffSignChange = { fg = ac.sky },
    MiniDiffSignDelete = { fg = ac.ember },
    MiniDiffOverAdd = { link = "DiffAdd" },
    MiniDiffOverChange = { link = "DiffChange" },
    MiniDiffOverContext = { link = "DiffChange" },
    MiniDiffOverDelete = { link = "DiffDelete" },

    -- mini.files
    MiniFilesDirectory = { fg = ac.sky, bold = true },
    MiniFilesFile = { fg = fg.text },
    MiniFilesCursorLine = { bg = bg.surface1 },
    MiniFilesNormal = { fg = fg.text, bg = bg.surface0 },
    MiniFilesBorder = { fg = bg.surface2, bg = bg.surface0 },
    MiniFilesBorderModified = { fg = ac.honey, bg = bg.surface0 },
    MiniFilesTitle = { fg = ac.lavender, bg = bg.surface0, bold = true },
    MiniFilesTitleFocused = { fg = ac.peach, bg = bg.surface0, bold = true },

    -- mini.notify
    MiniNotifyBorder = { fg = bg.surface2, bg = bg.surface0 },
    MiniNotifyNormal = { fg = fg.text, bg = bg.surface0 },
    MiniNotifyTitle = { fg = ac.lavender, bg = bg.surface0, bold = true },
  }
end

return M
