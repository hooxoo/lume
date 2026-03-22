local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local bg = p.backgrounds
  local ac = p.accents
  local util = require("lume.util")

  local italic = config.italics

  return {
    -- ── Diagnostics — base ───────────────────────────────────────────────
    DiagnosticError = { fg = ac.ember },
    DiagnosticWarn = { fg = ac.honey },
    DiagnosticInfo = { fg = ac.sky },
    DiagnosticHint = { fg = ac.teal },
    DiagnosticOk = { fg = ac.sage },

    -- ── Diagnostics — virtual text (alpha blended onto base) ────────────
    DiagnosticVirtualTextError = { fg = ac.ember, bg = util.blend(ac.ember, bg.base, 0.08) },
    DiagnosticVirtualTextWarn = { fg = ac.honey, bg = util.blend(ac.honey, bg.base, 0.08) },
    DiagnosticVirtualTextInfo = { fg = ac.sky, bg = util.blend(ac.sky, bg.base, 0.08) },
    DiagnosticVirtualTextHint = { fg = ac.teal, bg = util.blend(ac.teal, bg.base, 0.08) },
    DiagnosticVirtualTextOk = { fg = ac.sage, bg = util.blend(ac.sage, bg.base, 0.08) },

    -- ── Diagnostics — underline ──────────────────────────────────────────
    DiagnosticUnderlineError = { undercurl = true, sp = ac.ember },
    DiagnosticUnderlineWarn = { undercurl = true, sp = ac.honey },
    DiagnosticUnderlineInfo = { undercurl = true, sp = ac.sky },
    DiagnosticUnderlineHint = { undercurl = true, sp = ac.teal },
    DiagnosticUnderlineOk = { undercurl = true, sp = ac.sage },

    -- ── Diagnostics — sign column ────────────────────────────────────────
    DiagnosticSignError = { fg = ac.ember },
    DiagnosticSignWarn = { fg = ac.honey },
    DiagnosticSignInfo = { fg = ac.sky },
    DiagnosticSignHint = { fg = ac.teal },
    DiagnosticSignOk = { fg = ac.sage },

    -- ── Diagnostics — floating window ────────────────────────────────────
    DiagnosticFloatingError = { fg = ac.ember },
    DiagnosticFloatingWarn = { fg = ac.honey },
    DiagnosticFloatingInfo = { fg = ac.sky },
    DiagnosticFloatingHint = { fg = ac.teal },
    DiagnosticFloatingOk = { fg = ac.sage },

    -- ── LSP references ───────────────────────────────────────────────────
    LspReferenceText = { bg = bg.surface1 },
    LspReferenceRead = { bg = bg.surface1 },
    LspReferenceWrite = { bg = bg.surface1, bold = true },

    -- ── LSP misc ─────────────────────────────────────────────────────────
    LspSignatureActiveParameter = { fg = ac.peach, bold = true },
    LspCodeLens = { fg = fg.overlay },
    LspCodeLensSeparator = { fg = fg.overlay },
    LspInlayHint = { fg = fg.overlay, bg = bg.surface0, italic = true },
    LspInfoBorder = { fg = bg.surface2, bg = bg.surface0 },

    -- ── LSP semantic tokens — types ──────────────────────────────────────
    ["@lsp.type.class"] = { fg = ac.peach },
    ["@lsp.type.enum"] = { fg = ac.peach },
    ["@lsp.type.enumMember"] = { fg = ac.peach },
    ["@lsp.type.struct"] = { fg = ac.peach },
    ["@lsp.type.interface"] = { fg = ac.peach, italic = italic },
    ["@lsp.type.typeParameter"] = { fg = ac.peach, italic = italic },
    ["@lsp.type.type"] = { fg = ac.peach },
    ["@lsp.type.namespace"] = { fg = fg.text },

    -- ── LSP semantic tokens — functions ─────────────────────────────────
    ["@lsp.type.function"] = { fg = ac.sky },
    ["@lsp.type.method"] = { fg = ac.sky },

    -- ── LSP semantic tokens — variables / parameters ─────────────────────
    ["@lsp.type.variable"] = { fg = fg.text },
    ["@lsp.type.parameter"] = { fg = fg.subtext },
    ["@lsp.type.property"] = { fg = fg.text },

    -- ── LSP semantic tokens — keywords ───────────────────────────────────
    ["@lsp.type.keyword"] = { fg = ac.lavender },
    ["@lsp.type.modifier"] = { fg = ac.lavender },
    ["@lsp.type.decorator"] = { fg = ac.peach },

    -- ── LSP semantic tokens — modifiers ──────────────────────────────────
    ["@lsp.typemod.function.defaultLibrary"] = { fg = ac.sky, italic = italic },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = ac.sky, italic = italic },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = fg.text, italic = italic },
    ["@lsp.typemod.variable.readonly"] = { fg = ac.peach },
    ["@lsp.typemod.variable.static"] = { fg = ac.peach },
    ["@lsp.typemod.property.readonly"] = { fg = fg.text, italic = italic },
    ["@lsp.typemod.class.defaultLibrary"] = { fg = ac.peach },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = ac.peach, italic = italic },
  }
end

return M
