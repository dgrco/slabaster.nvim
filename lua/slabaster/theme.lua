-- Shared highlight-group engine. Colorscheme entrypoints (colors/*.lua)
-- each build a palette table and hand it here.

local M = {}

function M.load(name, p)
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = name

  -- Diagnostics reuse the core palette rather than adding new hues.
  local diag = {
    error = p.red,
    warn  = p.number,
    info  = p.builtin,
    hint  = p.string,
  }

  -- Git / diff reuse the core palette.
  local git = {
    add    = p.type,
    change = p.number,
    delete = p.red,
  }

  local function set(groups)
    for hlname, spec in pairs(groups) do
      vim.api.nvim_set_hl(0, hlname, spec)
    end
  end

  -- Terminal ANSI colors

  vim.g.terminal_color_0  = p.bg
  vim.g.terminal_color_1  = p.red
  vim.g.terminal_color_2  = p.type
  vim.g.terminal_color_3  = p.number
  vim.g.terminal_color_4  = p.builtin
  vim.g.terminal_color_5  = p.definition
  vim.g.terminal_color_6  = p.string
  vim.g.terminal_color_7  = p.fg
  vim.g.terminal_color_8  = p.fg_faint
  vim.g.terminal_color_9  = p.red
  vim.g.terminal_color_10 = p.comment
  vim.g.terminal_color_11 = p.number
  vim.g.terminal_color_12 = p.builtin
  vim.g.terminal_color_13 = p.definition
  vim.g.terminal_color_14 = p.string
  vim.g.terminal_color_15 = p.keyword

  -- Editor UI

  set({
    Normal        = { fg = p.fg, bg = p.bg },
    NormalNC      = { fg = p.fg, bg = p.bg },
    NormalFloat   = { fg = p.fg, bg = p.bg_float },
    FloatBorder   = { fg = p.border, bg = p.bg_float },
    FloatTitle    = { fg = p.keyword, bg = p.bg_float, bold = true },
    Cursor        = { fg = p.bg, bg = p.cursor },
    TermCursor    = { fg = p.bg, bg = p.cursor },
    CursorLine    = { bg = p.bg_cursor },
    CursorLineNr  = { fg = p.builtin, bg = p.bg_cursor, bold = true },
    CursorColumn  = { bg = p.bg_cursor },
    LineNr        = { fg = p.fg_faint },
    SignColumn    = { fg = p.fg_faint, bg = p.bg },
    ColorColumn   = { bg = p.bg_alt },
    WinSeparator  = { fg = p.border },
    VertSplit     = { fg = p.border },
    StatusLine    = { fg = p.fg, bg = p.bg_alt },
    StatusLineNC  = { fg = p.fg_faint, bg = p.bg_alt },
    TabLine       = { fg = p.fg_dim, bg = p.bg_alt },
    TabLineSel    = { fg = p.keyword, bg = p.bg_select, bold = true },
    TabLineFill   = { bg = p.bg_alt },
    Pmenu         = { fg = p.fg, bg = p.bg_float },
    PmenuSel      = { fg = p.keyword, bg = p.bg_select },
    PmenuSbar     = { bg = p.bg_alt },
    PmenuThumb    = { bg = p.border },
    Visual        = { bg = p.bg_visual },
    VisualNOS     = { bg = p.bg_visual },
    Search        = { fg = p.bg, bg = p.number },
    IncSearch     = { fg = p.bg, bg = p.builtin },
    CurSearch     = { fg = p.bg, bg = p.builtin },
    MatchParen    = { fg = p.matchparen or p.keyword, bold = true },
    NonText       = { fg = p.fg_faint },
    Whitespace    = { fg = p.fg_faint },
    EndOfBuffer   = { fg = p.fg_faint },
    Folded        = { fg = p.fg_dim, bg = p.bg_alt },
    FoldColumn    = { fg = p.fg_faint, bg = p.bg },
    Directory     = { fg = p.builtin },
    Title         = { fg = p.heading or p.keyword, bold = true },
    ErrorMsg      = { fg = diag.error },
    WarningMsg    = { fg = diag.warn },
    ModeMsg       = { fg = p.fg },
    MoreMsg       = { fg = p.string },
    Question      = { fg = p.string },
    WildMenu      = { fg = p.keyword, bg = p.bg_select },
    QuickFixLine  = { bg = p.bg_select },
    SpellBad      = { sp = diag.error, undercurl = true },
    SpellCap      = { sp = diag.warn, undercurl = true },
    SpellLocal    = { sp = diag.info, undercurl = true },
    SpellRare     = { sp = diag.hint, undercurl = true },
  })

  -- Syntax

  set({
    Comment        = { fg = p.comment },
    String         = { fg = p.string },
    Character      = { fg = p.string },
    Number         = { fg = p.number },
    Float          = { fg = p.number },
    Boolean        = { fg = p.number },
    Constant       = { fg = p.number },
    Identifier     = { fg = p.fg },
    Function       = { fg = p.definition },
    Statement      = { fg = p.keyword },
    Conditional    = { fg = p.keyword },
    Repeat         = { fg = p.keyword },
    Label          = { fg = p.keyword },
    Operator       = { fg = p.fg },
    Keyword        = { fg = p.keyword },
    Exception      = { fg = p.keyword },
    PreProc        = { fg = p.builtin },
    Include        = { fg = p.type },
    Define         = { fg = p.builtin },
    Macro          = { fg = p.macro or p.builtin },
    PreCondit      = { fg = p.builtin },
    Type           = { fg = p.type },
    StorageClass   = { fg = p.type },
    Structure      = { fg = p.type },
    Typedef        = { fg = p.type },
    Special        = { fg = p.builtin },
    SpecialChar    = { fg = p.builtin },
    Tag            = { fg = p.builtin },
    Delimiter      = { fg = p.fg_dim },
    SpecialComment = { fg = p.comment },
    Debug          = { fg = diag.warn },
    Underlined     = { fg = p.fg, underline = true },
    Ignore         = { fg = p.fg_faint },
    Error          = { fg = diag.error },
    Todo           = { fg = p.bg, bg = p.number },
  })

  -- Treesitter

  set({
    ["@comment"]              = { link = "Comment" },
    ["@string"]               = { link = "String" },
    ["@string.escape"]        = { fg = p.builtin },
    ["@string.special"]       = { fg = p.builtin },
    ["@character"]            = { link = "Character" },
    ["@number"]               = { link = "Number" },
    ["@number.float"]         = { link = "Float" },
    ["@boolean"]               = { link = "Boolean" },
    ["@constant"]              = { link = "Constant" },
    ["@constant.builtin"]      = { fg = p.macro or p.builtin },
    ["@constant.macro"]        = { fg = p.macro or p.builtin },
    ["@variable"]              = { fg = p.fg },
    ["@variable.builtin"]      = { fg = p.builtin },
    ["@variable.parameter"]    = { fg = p.fg },
    ["@variable.member"]       = { fg = p.fg },
    ["@function"]              = { link = "Function" },
    ["@function.builtin"]      = { fg = p.builtin },
    ["@function.builtin.call"] = { fg = p.builtin },
    ["@function.call"]         = { fg = p.fg },
    ["@function.method.call"]  = { fg = p.fg },
    ["@function.macro"]        = { fg = p.macro or p.builtin },
    ["@module"]                = { fg = p.fg },
    ["@method"]                = { link = "Function" },
    ["@method.call"]           = { fg = p.fg },
    ["@constructor"]           = { fg = p.type },
    ["@keyword"]               = { link = "Keyword" },
    ["@keyword.function"]      = { link = "Keyword" },
    ["@keyword.operator"]      = { fg = p.keyword },
    ["@keyword.return"]        = { link = "Keyword" },
    ["@keyword.import"]        = { fg = p.type },
    ["@conditional"]           = { link = "Conditional" },
    ["@repeat"]                = { link = "Repeat" },
    ["@label"]                 = { link = "Label" },
    ["@type"]                  = { link = "Type" },
    ["@type.builtin"]          = { fg = p.type },
    ["@type.definition"]       = { link = "Type" },
    ["@attribute"]             = { fg = p.builtin },
    ["@property"]              = { fg = p.fg },
    ["@field"]                 = { fg = p.fg },
    ["@parameter"]             = { fg = p.fg },
    ["@punctuation.delimiter"] = { fg = p.fg_dim },
    ["@punctuation.bracket"]   = { fg = p.fg_dim },
    ["@punctuation.special"]   = { fg = p.builtin },
    ["@operator"]              = { fg = p.fg },
    ["@namespace"]             = { fg = p.type },
    ["@include"]               = { link = "Include" },
    ["@preproc"]               = { link = "PreProc" },
    ["@tag"]                   = { link = "Tag" },
    ["@tag.attribute"]         = { fg = p.type },
    ["@tag.delimiter"]         = { fg = p.fg_dim },
    ["@text"]                  = { fg = p.fg },
    ["@text.strong"]           = { fg = p.fg, bold = true },
    ["@text.emphasis"]         = { fg = p.fg },
    ["@text.underline"]        = { fg = p.fg, underline = true },
    ["@text.literal"]          = { fg = p.string },
    ["@text.reference"]        = { fg = p.builtin },
    ["@text.uri"]              = { fg = p.builtin, underline = true },
    ["@text.title"]            = { link = "Title" },
    ["@text.todo"]             = { link = "Todo" },
    ["@markup.heading"]        = { link = "Title" },
    ["@markup.strong"]         = { fg = p.fg, bold = true },
    ["@markup.italic"]         = { fg = p.fg, italic = true },
    ["@markup.link"]           = { fg = p.builtin },
    ["@markup.link.url"]       = { fg = p.builtin, underline = true },
    ["@markup.raw"]            = { fg = p.string },
  })

  -- LSP

  set({
    DiagnosticError            = { fg = diag.error },
    DiagnosticWarn             = { fg = diag.warn },
    DiagnosticInfo             = { fg = diag.info },
    DiagnosticHint             = { fg = diag.hint },
    DiagnosticOk               = { fg = p.type },
    DiagnosticUnderlineError   = { sp = diag.error, undercurl = true },
    DiagnosticUnderlineWarn    = { sp = diag.warn, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = diag.info, undercurl = true },
    DiagnosticUnderlineHint    = { sp = diag.hint, undercurl = true },
    DiagnosticVirtualTextError = { fg = diag.error, bg = p.bg_alt },
    DiagnosticVirtualTextWarn  = { fg = diag.warn, bg = p.bg_alt },
    DiagnosticVirtualTextInfo  = { fg = diag.info, bg = p.bg_alt },
    DiagnosticVirtualTextHint  = { fg = diag.hint, bg = p.bg_alt },
    DiagnosticFloatingError    = { fg = diag.error },
    DiagnosticFloatingWarn     = { fg = diag.warn },
    DiagnosticFloatingInfo     = { fg = diag.info },
    DiagnosticFloatingHint     = { fg = diag.hint },
    DiagnosticSignError        = { fg = diag.error },
    DiagnosticSignWarn         = { fg = diag.warn },
    DiagnosticSignInfo         = { fg = diag.info },
    DiagnosticSignHint         = { fg = diag.hint },
    LspReferenceText           = { bg = p.bg_select },
    LspReferenceRead           = { bg = p.bg_select },
    LspReferenceWrite           = { bg = p.bg_select },
    LspSignatureActiveParameter = { fg = p.builtin, bold = true },
    LspInlayHint                = { fg = p.fg_faint, bg = p.bg_alt },
    LspCodeLens                 = { fg = p.fg_dim },
    ["@lsp.type.function"]                = { fg = p.fg },
    ["@lsp.type.method"]                  = { fg = p.fg },
    ["@lsp.typemod.function.declaration"] = { link = "Function" },
    ["@lsp.typemod.function.definition"]  = { link = "Function" },
    ["@lsp.typemod.method.declaration"]   = { link = "Function" },
    ["@lsp.typemod.method.definition"]    = { link = "Function" },
  })

  -- Diff

  set({
    DiffAdd     = { fg = git.add, bg = p.bg_alt },
    DiffChange  = { fg = git.change, bg = p.bg_alt },
    DiffDelete  = { fg = git.delete, bg = p.bg_alt },
    DiffText    = { fg = git.change, bg = p.bg_select },
  })

  -- gitsigns.nvim

  set({
    GitSignsAdd          = { fg = git.add },
    GitSignsChange       = { fg = git.change },
    GitSignsDelete       = { fg = git.delete },
    GitSignsChangedelete = { fg = git.change },
    GitSignsTopdelete    = { fg = git.delete },
    GitSignsUntracked    = { fg = git.add },
  })

  -- telescope.nvim

  set({
    TelescopeNormal         = { fg = p.fg, bg = p.bg },
    TelescopeBorder         = { fg = p.border, bg = p.bg },
    TelescopePromptNormal   = { fg = p.fg, bg = p.bg_alt },
    TelescopePromptBorder   = { fg = p.border, bg = p.bg_alt },
    TelescopePromptPrefix   = { fg = p.builtin },
    TelescopePromptTitle    = { fg = p.keyword, bold = true },
    TelescopeResultsTitle   = { fg = p.keyword, bold = true },
    TelescopePreviewTitle   = { fg = p.keyword, bold = true },
    TelescopeSelection      = { bg = p.bg_select },
    TelescopeSelectionCaret = { fg = p.definition },
    TelescopeMultiSelection = { fg = p.type },
    TelescopeMatching       = { fg = p.number, bold = true },
  })

  -- fzf-lua

  set({
    FzfLuaNormal          = { fg = p.fg, bg = p.bg },
    FzfLuaBorder           = { fg = p.border, bg = p.bg },
    FzfLuaTitle             = { fg = p.keyword, bold = true },
    FzfLuaCursor            = { fg = p.bg, bg = p.builtin },
    FzfLuaCursorLine        = { bg = p.bg_cursor },
    FzfLuaSelection         = { bg = p.bg_select },
    FzfLuaScrollBorderEmpty = { fg = p.border },
    FzfLuaScrollBorderFull  = { fg = p.builtin },
    FzfLuaHeaderText        = { fg = p.definition },
    FzfLuaHeaderBind        = { fg = p.type },
    FzfLuaPathColNr         = { fg = p.number },
    FzfLuaPathLineNr        = { fg = p.number },
    FzfLuaBufName           = { fg = p.fg },
    FzfLuaBufNr             = { fg = p.number },
    FzfLuaBufFlagCur        = { fg = p.type },
    FzfLuaBufFlagAlt        = { fg = p.builtin },
    FzfLuaLivePrompt        = { fg = p.builtin },
  })

  -- blink.cmp

  set({
    BlinkCmpMenu                        = { fg = p.fg, bg = p.bg_float },
    BlinkCmpMenuBorder                  = { fg = p.border, bg = p.bg_float },
    BlinkCmpMenuSelection                = { bg = p.bg_select },
    BlinkCmpScrollBarThumb              = { bg = p.border },
    BlinkCmpScrollBarGutter             = { bg = p.bg_float },
    BlinkCmpLabel                        = { fg = p.fg },
    BlinkCmpLabelMatch                   = { fg = p.builtin, bold = true },
    BlinkCmpLabelDeprecated              = { fg = p.fg_faint, strikethrough = true },
    BlinkCmpLabelDetail                  = { fg = p.fg_dim },
    BlinkCmpLabelDescription             = { fg = p.fg_dim },
    BlinkCmpSource                       = { fg = p.fg_dim },
    BlinkCmpGhostText                    = { fg = p.fg_faint },
    BlinkCmpDoc                          = { fg = p.fg, bg = p.bg_float },
    BlinkCmpDocBorder                    = { fg = p.border, bg = p.bg_float },
    BlinkCmpDocSeparator                 = { fg = p.border },
    BlinkCmpDocCursorLine                = { bg = p.bg_select },
    BlinkCmpSignatureHelp                = { fg = p.fg, bg = p.bg_float },
    BlinkCmpSignatureHelpBorder          = { fg = p.border, bg = p.bg_float },
    BlinkCmpSignatureHelpActiveParameter = { fg = p.builtin, bold = true },
    BlinkCmpKindText                     = { link = "Identifier" },
    BlinkCmpKindMethod                   = { link = "Function" },
    BlinkCmpKindFunction                 = { link = "Function" },
    BlinkCmpKindConstructor              = { link = "Function" },
    BlinkCmpKindField                    = { link = "Identifier" },
    BlinkCmpKindVariable                 = { link = "Identifier" },
    BlinkCmpKindClass                    = { link = "Type" },
    BlinkCmpKindInterface                = { link = "Type" },
    BlinkCmpKindStruct                   = { link = "Type" },
    BlinkCmpKindModule                   = { link = "Type" },
    BlinkCmpKindProperty                 = { link = "Identifier" },
    BlinkCmpKindUnit                     = { link = "Number" },
    BlinkCmpKindValue                    = { link = "Number" },
    BlinkCmpKindEnum                     = { link = "Type" },
    BlinkCmpKindEnumMember               = { link = "Number" },
    BlinkCmpKindConstant                 = { link = "Constant" },
    BlinkCmpKindKeyword                  = { link = "Keyword" },
    BlinkCmpKindSnippet                  = { link = "String" },
    BlinkCmpKindColor                    = { link = "Special" },
    BlinkCmpKindFile                     = { fg = p.fg },
    BlinkCmpKindReference                = { fg = p.fg },
    BlinkCmpKindFolder                   = { fg = p.fg },
    BlinkCmpKindEvent                    = { link = "Function" },
    BlinkCmpKindOperator                 = { link = "Operator" },
    BlinkCmpKindTypeParameter            = { link = "Type" },
  })

  -- nvim-cmp

  set({
    CmpItemAbbr           = { fg = p.fg },
    CmpItemAbbrMatch       = { fg = p.builtin, bold = true },
    CmpItemAbbrMatchFuzzy  = { fg = p.builtin, bold = true },
    CmpItemAbbrDeprecated  = { fg = p.fg_faint, strikethrough = true },
    CmpItemMenu            = { fg = p.fg_dim },
    CmpItemKind             = { fg = p.type },
    CmpBorder               = { fg = p.border },
    CmpDocBorder            = { fg = p.border },
  })

  -- indent-blankline (ibl)

  set({
    IblIndent  = { fg = p.bg_alt },
    IblScope   = { fg = p.border },
  })

  -- which-key.nvim

  set({
    WhichKey          = { fg = p.builtin },
    WhichKeyGroup     = { fg = p.type },
    WhichKeyDesc      = { fg = p.fg },
    WhichKeySeparator = { fg = p.fg_faint },
    WhichKeyFloat     = { bg = p.bg_float },
    WhichKeyBorder    = { fg = p.border, bg = p.bg_float },
  })

  -- bufferline.nvim

  set({
    BufferLineFill              = { bg = p.bg_alt },
    BufferLineBackground         = { fg = p.fg_dim, bg = p.bg_alt },
    BufferLineBufferSelected     = { fg = p.keyword, bg = p.bg, bold = true },
    BufferLineBufferVisible      = { fg = p.fg, bg = p.bg_alt },
    BufferLineIndicatorSelected  = { fg = p.builtin, bg = p.bg },
    BufferLineSeparator          = { fg = p.bg_alt, bg = p.bg_alt },
    BufferLineModified           = { fg = p.number, bg = p.bg_alt },
    BufferLineModifiedSelected   = { fg = p.number, bg = p.bg },
  })

  -- nvim-tree / neo-tree

  set({
    NvimTreeNormal        = { fg = p.fg, bg = p.bg },
    NvimTreeFolderIcon     = { fg = p.builtin },
    NvimTreeFolderName     = { fg = p.fg },
    NvimTreeOpenedFolderName = { fg = p.keyword, bold = true },
    NvimTreeRootFolder      = { fg = p.definition, bold = true },
    NvimTreeIndentMarker    = { fg = p.border },
    NvimTreeGitDirty        = { fg = git.change },
    NvimTreeGitNew          = { fg = git.add },
    NvimTreeGitDeleted      = { fg = git.delete },
    NvimTreeSpecialFile     = { fg = p.number, underline = true },
    NvimTreeExecFile        = { fg = p.type },
    NeoTreeNormal           = { fg = p.fg, bg = p.bg },
    NeoTreeDirectoryIcon    = { fg = p.builtin },
    NeoTreeDirectoryName    = { fg = p.fg },
    NeoTreeRootName         = { fg = p.definition, bold = true },
    NeoTreeIndentMarker     = { fg = p.border },
    NeoTreeGitAdded         = { fg = git.add },
    NeoTreeGitModified      = { fg = git.change },
    NeoTreeGitDeleted       = { fg = git.delete },
  })

  -- noice.nvim / notify.nvim

  set({
    NoiceCmdlinePopup       = { fg = p.fg, bg = p.bg_float },
    NoiceCmdlinePopupBorder = { fg = p.border, bg = p.bg_float },
    NoiceCmdlineIcon        = { fg = p.builtin },
    NoiceConfirm            = { fg = p.fg, bg = p.bg_float },
    NoiceConfirmBorder      = { fg = p.border, bg = p.bg_float },
    NotifyERRORBorder       = { fg = diag.error },
    NotifyWARNBorder        = { fg = diag.warn },
    NotifyINFOBorder        = { fg = diag.info },
    NotifyDEBUGBorder       = { fg = p.fg_faint },
    NotifyTRACEBorder       = { fg = p.definition },
    NotifyERRORIcon         = { fg = diag.error },
    NotifyWARNIcon          = { fg = diag.warn },
    NotifyINFOIcon          = { fg = diag.info },
    NotifyERRORTitle        = { fg = diag.error },
    NotifyWARNTitle         = { fg = diag.warn },
    NotifyINFOTitle         = { fg = diag.info },
  })

  -- trouble.nvim

  set({
    TroubleNormal  = { fg = p.fg, bg = p.bg },
    TroubleText    = { fg = p.fg },
    TroubleCount   = { fg = p.builtin, bg = p.bg_alt },
    TroubleError    = { fg = diag.error },
    TroubleWarning = { fg = diag.warn },
    TroubleInformation = { fg = diag.info },
    TroubleHint    = { fg = diag.hint },
    TroubleFoldIcon = { fg = p.fg_dim },
    TroubleIndent  = { fg = p.border },
    TroubleFile    = { fg = p.builtin },
  })

  -- mason.nvim

  set({
    MasonNormal        = { fg = p.fg, bg = p.bg },
    MasonHeader         = { fg = p.bg, bg = p.definition, bold = true },
    MasonHighlight       = { fg = p.builtin },
    MasonHighlightBlock  = { fg = p.bg, bg = p.builtin },
    MasonMuted           = { fg = p.fg_dim },
    MasonError           = { fg = diag.error },
  })

  -- alpha-nvim / dashboard-nvim

  set({
    AlphaHeader  = { fg = p.definition },
    AlphaButtons = { fg = p.builtin },
    AlphaShortcut = { fg = p.number },
    AlphaFooter  = { fg = p.fg_dim },
  })

  -- render-markdown.nvim

  set({
    RenderMarkdownCodeInline = { fg = p.string, bg = "NONE" },
  })
end

return M
