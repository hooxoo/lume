local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    -- Explorer / Picker git status (applied to filenames when git_status_hl = true)
    SnacksPickerGitStatusAdded = { fg = ac.sage },
    SnacksPickerGitStatusModified = { fg = ac.sky },
    SnacksPickerGitStatusDeleted = { fg = ac.ember },
    SnacksPickerGitStatusRenamed = { fg = ac.sky },
    SnacksPickerGitStatusUntracked = { fg = ac.sage },
    SnacksPickerGitStatusIgnored = { fg = fg.overlay },
    SnacksPickerGitStatusUnmerged = { fg = ac.ember },
    SnacksPickerGitStatusStaged = { fg = ac.teal },

    -- Picker UI
    SnacksPickerMatch = { fg = ac.peach, bold = true },
    SnacksPickerPrompt = { fg = ac.lavender },
    SnacksPickerDir = { fg = fg.overlay },
    SnacksPickerFile = { fg = fg.text },
    SnacksPickerDirectory = { fg = ac.sky },
    SnacksPickerPathIgnored = { fg = fg.overlay },
    SnacksPickerPathHidden = { fg = fg.overlay },
    SnacksPickerDimmed = { fg = fg.overlay },
    SnacksPickerTotals = { fg = fg.overlay },
    SnacksPickerTree = { fg = bg.surface2 },

    -- Dashboard
    SnacksDashboardHeader = { fg = ac.lavender },
    SnacksDashboardFooter = { fg = fg.overlay, italic = true },
    SnacksDashboardDesc = { fg = fg.subtext },
    SnacksDashboardKey = { fg = ac.peach, bold = true },
    SnacksDashboardIcon = { fg = ac.sky },
    SnacksDashboardSpecial = { fg = ac.lavender },
    SnacksDashboardDir = { fg = fg.overlay },
    SnacksDashboardFile = { fg = fg.text },
    SnacksDashboardTitle = { fg = ac.lavender, bold = true },

    -- Notifier
    SnacksNotifierInfo = { fg = ac.sky },
    SnacksNotifierWarn = { fg = ac.honey },
    SnacksNotifierError = { fg = ac.ember },
    SnacksNotifierDebug = { fg = fg.overlay },
    SnacksNotifierTrace = { fg = ac.lavender },
    SnacksNotifierIconInfo = { fg = ac.sky },
    SnacksNotifierIconWarn = { fg = ac.honey },
    SnacksNotifierIconError = { fg = ac.ember },
    SnacksNotifierIconDebug = { fg = fg.overlay },
    SnacksNotifierIconTrace = { fg = ac.lavender },
  }
end

return M
