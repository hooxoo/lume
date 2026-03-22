local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents

  return {
    -- dashboard-nvim
    DashboardHeader = { fg = ac.lavender },
    DashboardFooter = { fg = fg.overlay, italic = true },
    DashboardDesc = { fg = fg.subtext },
    DashboardKey = { fg = ac.peach, bold = true },
    DashboardIcon = { fg = ac.sky },
    DashboardShortCut = { fg = ac.rose },
    DashboardCenter = { fg = fg.text },
    DashboardProjectTitle = { fg = ac.lavender, bold = true },
    DashboardProjectTitleIcon = { fg = ac.sky },
    DashboardProjectIcon = { fg = ac.sky },
    DashboardMruTitle = { fg = ac.lavender, bold = true },
    DashboardMruIcon = { fg = ac.sky },
    DashboardFiles = { fg = fg.text },

    -- alpha-nvim
    AlphaHeader = { fg = ac.lavender },
    AlphaButtons = { fg = fg.text },
    AlphaShortcut = { fg = ac.peach, bold = true },
    AlphaFooter = { fg = fg.overlay, italic = true },
  }
end

return M
