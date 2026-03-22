local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    LazyH1 = { fg = bg.base, bg = ac.lavender, bold = true },
    LazyH2 = { fg = ac.lavender, bold = true },
    LazyNormal = { fg = fg.text, bg = bg.surface0 },
    LazyBorder = { fg = bg.surface2, bg = bg.surface0 },

    LazyButton = { fg = fg.subtext, bg = bg.surface0 },
    LazyButtonActive = { fg = fg.text, bg = bg.surface1, bold = true },

    LazyComment = { fg = fg.comment },
    LazyCommit = { fg = ac.teal },
    LazyCommitIssue = { fg = ac.rose },
    LazyCommitType = { fg = ac.lavender, bold = true },
    LazyDir = { fg = ac.sky },
    LazyUrl = { fg = ac.sky, underline = true },
    LazySpecial = { fg = ac.teal },

    LazyProgressDone = { fg = ac.lavender },
    LazyProgressTodo = { fg = bg.surface2 },

    LazyReasonCmd = { fg = ac.peach },
    LazyReasonEvent = { fg = ac.rose },
    LazyReasonFt = { fg = ac.teal },
    LazyReasonImport = { fg = ac.sky },
    LazyReasonKeys = { fg = ac.honey },
    LazyReasonPlugin = { fg = ac.lavender },
    LazyReasonRuntime = { fg = fg.subtext },
    LazyReasonSource = { fg = ac.sage },
    LazyReasonStart = { fg = fg.text },

    LazyTaskError = { fg = ac.ember },
    LazyTaskOutput = { fg = fg.subtext },
  }
end

return M
