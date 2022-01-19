-- Built with Lush.
-- Enable lush.ify on this file, run:
--  `:Lushify`

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.
    primary_background { fg = hsl('#000000') },
    primary_foreground { fg = hsl('#ffffff') },
                                              
    cursor_text        { fg = hsl('#000000') },
    cursor_cursor      { fg = hsl('#aaaaaa') },
                                              
    normal_black       { fg = hsl('#111111') },
    normal_red         { fg = hsl('#ca1222') },
    normal_green       { fg = hsl('#8dbe53') },
    normal_yellow      { fg = hsl('#ebaa2a') },
    normal_blue        { fg = hsl('#3e7fe9') },
    normal_magenta     { fg = hsl('#d65fd6') },
    normal_cyan        { fg = hsl('#54b3c1') },
    normal_white       { fg = hsl('#dddddd') },
                                              
    dim_black          { fg = hsl('#353535') },
    dim_red            { fg = hsl('#ff7783') },
    dim_green          { fg = hsl('#9ec66f') },
    dim_yellow         { fg = hsl('#e8c172') },
    dim_blue           { fg = hsl('#84aff2') },
    dim_magenta        { fg = hsl('#e793e7') },
    dim_cyan           { fg = hsl('#84cdd7') },
    dim_white          { fg = hsl('#777777') },


    Comment      { fg = normal_black.fg.lighten(40), },--gui = "italic" }, -- any comment
    ColorColumn  { bg = normal_white.fg }, -- used for the columns set with 'colorcolumn'
    Conceal      { bg = normal_white.fg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = normal_cyan.fg.darken(20), gui = "italic" }, -- directory names (and other special names in listings)
    -- DiffAdd      { }, -- diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { bg = dim_magenta.fg }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { bg = normal_red.fg.lighten(20), gui="italic" }, -- error messages on the command line
    Normal       { fg = normal_black.fg.lighten(10) }, -- normal text
    LineNr       { fg = Normal.fg.lighten(30), bg = normal_white.fg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    FoldColumn   { bg = LineNr.bg.darken(4) }, -- 'foldcolumn'
    SignColumn   { bg = FoldColumn.bg }, -- column where |signs| are displayed
    VertSplit    { fg = LineNr.fg, bg = SignColumn.bg }, -- the column separating vertically split windows
    -- Folded       {}, -- line used for closed folds
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    CursorLineNr { fg = LineNr.fg.lighten(40) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = dim_cyan.fg.lighten(10).desaturate(20) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    NonText      { fg = dim_white.fg }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    NormalFloat  { fg = normal_black.fg.lighten(40), bg = normal_blue.fg.desaturate(80).lighten(70) }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = NormalFloat.fg.lighten(10), bg = NormalFloat.bg.lighten(10) }, -- Popup menu: normal item.
    PmenuSel     { bg = Pmenu.bg.darken(5).saturate(10) }, -- Popup menu: selected item.
    PmenuSbar    { bg = Pmenu.bg.darken(7) }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = PmenuSbar.bg.darken(7).saturate(5) }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = normal_green.fg.darken(30).saturate(20) }, -- |hit-enter| prompt and yes/no questions
    Search       { fg = normal_black.fg, bg = dim_yellow.fg.rotate(-20).saturate(40).darken(10) }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    QuickFixLine { bg = Search.bg.lighten(30).desaturate(3) }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey   { fg = normal_cyan.fg }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- status line of current window
    -- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    Title        { fg = dim_magenta.fg.desaturate(45).darken(20), gui = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = normal_white.fg.darken(5) }, -- Visual mode selection
    VisualNOS    { bg = Visual.bg.darken(5) }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = normal_red.fg }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = dim_red.fg.darken(10).saturate(10), gui = "italic" }, -- (preferred) any constant
    String         { fg = Constant.fg.darken(20).desaturate(40) }, --   a string constant: "this is a string"
    Character      { fg = String.fg.rotate(40).darken(10).desaturate(10) }, --  a character constant: 'c', '\n'
    Number         { fg = String.fg.rotate(-80).saturate(30) }, --   a number constant: 234, 0xff
    Float          { fg = Number.fg.rotate(20) }, --    a floating point constant: 2.3e10
    Boolean        { fg = Constant.fg.rotate(-20).desaturate(20) }, --  a boolean constant: TRUE, false

    Identifier     { fg = dim_blue.fg.rotate(10).saturate(10).darken(40) }, -- (preferred) any variable name
    Function       { fg = Identifier.fg.rotate(-5).desaturate(20).lighten(20), gui="bold" }, -- function name (also: methods for classes)

    Statement      { fg = normal_cyan.fg.desaturate(10).darken(10) }, -- (preferred) any statement
    Conditional    { fg = Statement.fg.lighten(7), gui = "italic, bold" }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    Operator       { fg = dim_yellow.fg.rotate(-30).desaturate(20).darken(10) }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = dim_white.fg.saturate(5).rotate(220).lighten(20), gui = "italic, bold" }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    Type           { fg = normal_yellow.fg.saturate(30).rotate(-15).darken(10), gui = "italic" }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = Type.fg.rotate(-70).desaturate(40).lighten(10), gui = "bold" }, -- static, register, volatile, etc.
    Structure      { fg = Type.fg.darken(30) }, --  struct, union, enum, etc.
    Typedef        { bg = Type.fg.rotate(-200) }, --  A typedef

    PreProc        { fg = hsl(300, 20, 70).darken(10)  }, -- (preferred) generic Preprocessor
    Include        {  fg = Type.fg.lighten(17).desaturate(10) }, --  preprocessor #include
    Define         { fg = normal_green.fg.darken(20).desaturate(20) }, --   preprocessor #define
    Macro          {  fg = normal_red.fg.lighten(30).desaturate(10), gui = Function.gui }, --    same as Define
    PreCondit      {  fg = normal_magenta.fg    }, --  preprocessor #if, #else, #endif, etc.

    Special        { fg = dim_blue.fg.darken(60).desaturate(50) }, -- (preferred) any special symbol
    -- SpecialChar    { fg = normal_magenta.fg}, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    Delimiter      { fg = dim_white.fg}, --  character that needs attention
    SpecialComment { fg = Type.fg.lighten(10).desaturate(40) }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { bg = ErrorMsg.bg }, -- (preferred) any erroneous construct

    Todo           { fg = dim_yellow.fg.saturate(10).lighten(20), bg = Comment.fg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- used for highlighting "text" references
    -- LspReferenceRead            { } , -- used for highlighting "read" references
    -- LspReferenceWrite           { } , -- used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = normal_red.fg.lighten(20), gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = normal_yellow.fg.darken(15).saturate(20), gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = dim_blue.fg.desaturate(60).darken(30), gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = Normal.fg.lighten(40), gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError        { fg = DiagnosticError.fg, bg = SignColumn.bg, gui = "italic" } , -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { fg = DiagnosticWarn.fg, bg = SignColumn.bg, gui = "italic" } , -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { fg = DiagnosticInfo.fg, bg = SignColumn.bg, gui = "italic" } , -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { fg = DiagnosticHint.fg, bg = SignColumn.bg, gui = "italic" } , -- Used for "Hint" signs in sign column.

    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    -- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- TSField              { } , -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    -- TSFunction           { } , -- Function calls and definitions.
    -- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            { } , -- Keywords that don't fit into other categories.
    TSKeywordFunction    { fg = Keyword.fg.saturate(20) } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { bg = normal_magenta.fg } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordReturn      { fg = TSKeywordFunction.fg.rotate(-30) } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             { } , -- Method calls and definitions.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    TSOperator           { fg = Operator.fg, gui = "bold"} , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    -- TSParameter          { } , -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSProperty           { } , -- Same as `TSField`.
    -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    -- TSStrong             { } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
    -- TSVariable           { fg = normal_blue.fg } , -- Variable names that don't fit into other categories.
    -- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
