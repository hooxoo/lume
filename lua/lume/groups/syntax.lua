local M = {}

function M.get(p, config)
  local fg = p.foregrounds
  local ac = p.accents

  local italic = config.italics

  return {
    -- ── Legacy Vim syntax groups ─────────────────────────────────────────
    Comment = { fg = fg.comment, italic = italic },
    Constant = { fg = ac.peach },
    String = { fg = ac.sage },
    Character = { fg = ac.sage },
    Number = { fg = ac.peach },
    Float = { fg = ac.peach },
    Boolean = { fg = ac.peach },
    Identifier = { fg = fg.text },
    Function = { fg = fg.text },
    Statement = { fg = ac.lavender, italic = italic },
    Conditional = { fg = ac.rose },
    Repeat = { fg = ac.rose },
    Label = { fg = ac.rose },
    Operator = { fg = ac.rose },
    Keyword = { fg = ac.lavender, italic = italic },
    Exception = { fg = ac.rose },
    PreProc = { fg = ac.teal },
    Include = { fg = ac.lavender, italic = italic },
    Define = { fg = ac.lavender },
    Macro = { fg = ac.teal },
    PreCondit = { fg = ac.teal },
    Type = { fg = ac.peach },
    StorageClass = { fg = ac.lavender, italic = italic },
    Structure = { fg = ac.peach },
    Typedef = { fg = ac.peach },
    Special = { fg = ac.teal },
    SpecialChar = { fg = ac.teal },
    Tag = { fg = ac.rose },
    Delimiter = { fg = fg.overlay },
    SpecialComment = { fg = fg.overlay, italic = italic },
    Debug = { fg = ac.ember },
    Underlined = { underline = true },
    Ignore = { fg = fg.overlay },
    Error = { fg = ac.ember },
    Todo = { fg = ac.honey, bold = true },

    -- ── Treesitter — variables ───────────────────────────────────────────
    ["@variable"] = { fg = fg.text },
    ["@variable.builtin"] = { fg = fg.text, italic = italic },
    ["@variable.parameter"] = { fg = fg.subtext },
    ["@variable.member"] = { fg = fg.text },

    -- ── Treesitter — constants ───────────────────────────────────────────
    ["@constant"] = { fg = ac.peach },
    ["@constant.builtin"] = { fg = ac.peach, italic = italic },
    ["@constant.macro"] = { fg = ac.teal },

    -- ── Treesitter — modules / namespaces ────────────────────────────────
    ["@module"] = { fg = fg.text },
    ["@module.builtin"] = { fg = fg.text, italic = italic },
    ["@label"] = { fg = ac.rose },

    -- ── Treesitter — literals ────────────────────────────────────────────
    ["@string"] = { fg = ac.sage },
    ["@string.documentation"] = { fg = ac.sage, italic = italic },
    ["@string.escape"] = { fg = ac.teal },
    ["@string.regexp"] = { fg = ac.teal },
    ["@string.regex"] = { link = "@string.regexp" },
    ["@string.special"] = { fg = ac.teal },
    ["@string.special.symbol"] = { fg = ac.peach },
    ["@string.special.url"] = { fg = ac.sky, underline = true },
    ["@character"] = { fg = ac.sage },
    ["@character.special"] = { fg = ac.teal },
    ["@boolean"] = { fg = ac.peach },
    ["@number"] = { fg = ac.peach },
    ["@number.float"] = { fg = ac.peach },

    -- ── Treesitter — types ───────────────────────────────────────────────
    ["@type"] = { fg = ac.peach },
    ["@type.builtin"] = { fg = ac.peach, italic = italic },
    ["@type.definition"] = { fg = ac.peach },
    ["@attribute"] = { fg = ac.peach },
    ["@attribute.builtin"] = { fg = ac.peach, italic = italic },
    ["@property"] = { fg = fg.text },

    -- ── Treesitter — functions ───────────────────────────────────────────
    ["@function"] = { fg = fg.text },
    ["@function.builtin"] = { fg = ac.sky, italic = italic },
    ["@function.call"] = { fg = ac.sky },
    ["@function.macro"] = { fg = ac.teal },
    ["@function.method"] = { fg = fg.text },
    ["@function.method.call"] = { fg = ac.sky },
    ["@constructor"] = { fg = ac.peach },
    ["@operator"] = { fg = ac.rose },

    -- ── Treesitter — keywords ────────────────────────────────────────────
    ["@keyword"] = { fg = ac.lavender, italic = italic },
    ["@keyword.coroutine"] = { fg = ac.lavender, italic = italic },
    ["@keyword.function"] = { fg = ac.lavender, italic = italic },
    ["@keyword.operator"] = { fg = ac.rose },
    ["@keyword.import"] = { fg = ac.lavender, italic = italic },
    ["@keyword.storage"] = { fg = ac.lavender, italic = italic },
    ["@keyword.repeat"] = { fg = ac.rose },
    ["@keyword.return"] = { fg = ac.rose },
    ["@keyword.debug"] = { fg = ac.ember },
    ["@keyword.exception"] = { fg = ac.rose },
    ["@keyword.conditional"] = { fg = ac.rose },
    ["@keyword.conditional.ternary"] = { fg = ac.rose },
    ["@keyword.directive"] = { fg = ac.teal },
    ["@keyword.directive.define"] = { fg = ac.teal },

    -- ── Treesitter — punctuation ─────────────────────────────────────────
    ["@punctuation.delimiter"] = { fg = fg.overlay },
    ["@punctuation.bracket"] = { fg = fg.overlay },
    ["@punctuation.special"] = { fg = ac.teal },

    -- ── Treesitter — comments ────────────────────────────────────────────
    ["@comment"] = { fg = fg.comment, italic = italic },
    ["@comment.documentation"] = { fg = fg.comment, italic = italic },
    ["@comment.error"] = { fg = ac.ember, bold = true },
    ["@comment.warning"] = { fg = ac.honey, bold = true },
    ["@comment.todo"] = { fg = ac.honey, bold = true },
    ["@comment.note"] = { fg = ac.sky, bold = true },

    -- ── Treesitter — markup ──────────────────────────────────────────────
    ["@markup.strong"] = { fg = ac.peach, bold = true },
    ["@markup.italic"] = { fg = ac.rose, italic = true },
    ["@markup.strikethrough"] = { fg = fg.overlay, strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = ac.lavender, bold = true },
    ["@markup.heading.1"] = { fg = ac.lavender, bold = true },
    ["@markup.heading.2"] = { fg = ac.rose, bold = true },
    ["@markup.heading.3"] = { fg = ac.peach, bold = true },
    ["@markup.heading.4"] = { fg = ac.sage, bold = true },
    ["@markup.heading.5"] = { fg = ac.sky, bold = true },
    ["@markup.heading.6"] = { fg = ac.teal, bold = true },
    ["@markup.quote"] = { fg = fg.subtext, italic = italic },
    ["@markup.math"] = { fg = ac.teal },
    ["@markup.environment"] = { fg = ac.peach },
    ["@markup.link"] = { fg = ac.sky, underline = true },
    ["@markup.link.label"] = { fg = ac.sky },
    ["@markup.link.url"] = { fg = ac.sky, underline = true },
    ["@markup.raw"] = { fg = ac.sage },
    ["@markup.raw.block"] = { fg = ac.sage },
    ["@markup.list"] = { fg = ac.rose },
    ["@markup.list.checked"] = { fg = ac.sage },
    ["@markup.list.unchecked"] = { fg = fg.overlay },

    -- ── Treesitter — tags (HTML/JSX) ─────────────────────────────────────
    ["@tag"] = { fg = ac.rose },
    ["@tag.attribute"] = { fg = ac.peach, italic = italic },
    ["@tag.delimiter"] = { fg = fg.overlay },

    -- ── Treesitter — diff ────────────────────────────────────────────────
    ["@diff.plus"] = { fg = ac.sage },
    ["@diff.minus"] = { fg = ac.ember },
    ["@diff.delta"] = { fg = ac.sky },
  }
end

return M
