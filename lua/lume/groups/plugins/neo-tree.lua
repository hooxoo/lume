local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    NeoTreeNormal = { fg = fg.text, bg = bg.mantle },
    NeoTreeNormalNC = { fg = fg.text, bg = bg.mantle },
    NeoTreeEndOfBuffer = { fg = bg.mantle, bg = bg.mantle },
    NeoTreeCursorLine = { bg = bg.surface0 },

    NeoTreeRootName = { fg = ac.lavender, bold = true },
    NeoTreeDirectoryName = { fg = ac.sky },
    NeoTreeDirectoryIcon = { fg = ac.sky },
    NeoTreeFileName = { fg = fg.text },
    NeoTreeFileIcon = { fg = fg.subtext },
    NeoTreeFileNameOpened = { fg = fg.text, bold = true },

    NeoTreeIndentMarker = { fg = bg.surface1 },
    NeoTreeExpander = { fg = fg.overlay },
    NeoTreeSymbolicLinkTarget = { fg = ac.teal },
    NeoTreeFloatTitle = { fg = ac.lavender, bold = true },
    NeoTreeTitleBar = { fg = bg.base, bg = ac.lavender, bold = true },
    NeoTreeWinSeparator = { fg = bg.mantle, bg = bg.mantle },

    NeoTreeFilterTerm = { fg = ac.peach, bold = true },
    NeoTreeModified = { fg = ac.sky },
    NeoTreeDimText = { fg = fg.overlay },
    NeoTreeHiddenByName = { fg = fg.overlay },

    -- Git status
    NeoTreeGitAdded = { fg = ac.sage },
    NeoTreeGitConflict = { fg = ac.ember },
    NeoTreeGitDeleted = { fg = ac.ember },
    NeoTreeGitIgnored = { fg = fg.overlay },
    NeoTreeGitModified = { fg = ac.sky },
    NeoTreeGitUnstaged = { fg = ac.honey },
    NeoTreeGitUntracked = { fg = ac.sage },
    NeoTreeGitStaged = { fg = ac.sage },
  }
end

return M
