local M = {}

local CORE_MODULES = {
  "lume.groups.editor",
  "lume.groups.syntax",
  "lume.groups.lsp",
}

local PLUGIN_MODULES = {
  "lume.groups.plugins.telescope",
  "lume.groups.plugins.cmp",
  "lume.groups.plugins.gitsigns",
  "lume.groups.plugins.indent-blankline",
  "lume.groups.plugins.which-key",
  "lume.groups.plugins.lazy",
  "lume.groups.plugins.neo-tree",
  "lume.groups.plugins.oil",
  "lume.groups.plugins.mini",
  "lume.groups.plugins.notify",
  "lume.groups.plugins.noice",
  "lume.groups.plugins.trouble",
  "lume.groups.plugins.flash",
  "lume.groups.plugins.dashboard",
  "lume.groups.plugins.snacks",
}

function M.apply(config)
  local p = require("lume.palette")
  local groups = {}

  local function load_module(mod, is_core)
    local ok, module_groups = pcall(require, mod)
    if not ok then
      if is_core then
        vim.notify("[lume] Failed to load core module " .. mod .. ": " .. tostring(module_groups), vim.log.levels.ERROR)
      end
      return
    end

    local get_ok, result = pcall(module_groups.get, p, config)
    if not get_ok then
      vim.notify("[lume] Error in " .. mod .. ".get(): " .. tostring(result), vim.log.levels.ERROR)
      return
    end

    for k, v in pairs(result) do
      groups[k] = v
    end
  end

  for _, mod in ipairs(CORE_MODULES) do
    load_module(mod, true)
  end

  for _, mod in ipairs(PLUGIN_MODULES) do
    load_module(mod, false)
  end

  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Terminal colors
  vim.g.terminal_color_0 = p.ansi.black
  vim.g.terminal_color_1 = p.ansi.red
  vim.g.terminal_color_2 = p.ansi.green
  vim.g.terminal_color_3 = p.ansi.yellow
  vim.g.terminal_color_4 = p.ansi.blue
  vim.g.terminal_color_5 = p.ansi.magenta
  vim.g.terminal_color_6 = p.ansi.cyan
  vim.g.terminal_color_7 = p.ansi.white
  vim.g.terminal_color_8 = p.ansi.brightBlack
  vim.g.terminal_color_9 = p.ansi.brightRed
  vim.g.terminal_color_10 = p.ansi.brightGreen
  vim.g.terminal_color_11 = p.ansi.brightYellow
  vim.g.terminal_color_12 = p.ansi.brightBlue
  vim.g.terminal_color_13 = p.ansi.brightMagenta
  vim.g.terminal_color_14 = p.ansi.brightCyan
  vim.g.terminal_color_15 = p.ansi.brightWhite
end

return M
