local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    CmpItemAbbr = { fg = fg.subtext },
    CmpItemAbbrDeprecated = { fg = fg.overlay, strikethrough = true },
    CmpItemAbbrMatch = { fg = ac.peach, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = ac.peach, bold = true },
    CmpItemMenu = { fg = fg.overlay },
    CmpItemKind = { fg = ac.lavender },

    -- Kind icons / labels
    CmpItemKindClass = { fg = ac.peach },
    CmpItemKindColor = { fg = ac.ember },
    CmpItemKindConstant = { fg = ac.peach },
    CmpItemKindConstructor = { fg = ac.peach },
    CmpItemKindEnum = { fg = ac.peach },
    CmpItemKindEnumMember = { fg = ac.peach },
    CmpItemKindEvent = { fg = ac.rose },
    CmpItemKindField = { fg = ac.sky },
    CmpItemKindFile = { fg = fg.text },
    CmpItemKindFolder = { fg = ac.sky },
    CmpItemKindFunction = { fg = fg.text },
    CmpItemKindInterface = { fg = ac.peach },
    CmpItemKindKeyword = { fg = ac.lavender },
    CmpItemKindMethod = { fg = fg.text },
    CmpItemKindModule = { fg = fg.text },
    CmpItemKindOperator = { fg = ac.rose },
    CmpItemKindProperty = { fg = ac.sky },
    CmpItemKindReference = { fg = ac.teal },
    CmpItemKindSnippet = { fg = ac.honey },
    CmpItemKindStruct = { fg = ac.peach },
    CmpItemKindText = { fg = fg.subtext },
    CmpItemKindTypeParameter = { fg = ac.peach },
    CmpItemKindUnit = { fg = ac.peach },
    CmpItemKindValue = { fg = ac.peach },
    CmpItemKindVariable = { fg = fg.text },

    -- Ghost text
    CmpGhostText = { fg = fg.overlay },
  }
end

return M
