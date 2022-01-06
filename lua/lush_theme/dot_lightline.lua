-- Import our main theme definitions
local theme = require('lush_theme.dot')

-- Use the imported theme. If you've looked at lightine_one_file, this will
-- look very familiar, indeed, you only have to cut-paste the lightline
-- code and make sure you import the main theme file.
local lightline_theme = {
   normal = {
     left = {
       {theme.dim_green.fg.hex, theme.normal_green.fg.darken(50).desaturate(40).hex},
     },
     middle = {
       {theme.Pmenu.fg.hex, theme.Pmenu.bg.hex},
     },
     right = {
       {theme.NormalFloat.fg.hex, theme.NormalFloat.bg.hex},
     },
   },
   insert = {
     left = {
       {theme.Identifier.fg.lighten(20).hex, theme.Function.fg.darken(50).hex},
     },
     middle = {
       {theme.Pmenu.fg.hex, theme.Pmenu.bg.hex},
     },
     right = {
       {theme.NormalFloat.fg.hex, theme.NormalFloat.bg.hex},
     },
   },
   visual = {
     left = {
       {theme.SpecialComment.fg.lighten(40).hex, theme.Type.fg.darken(40).hex},
     },
     middle = {
       {theme.Pmenu.fg.hex, theme.Pmenu.bg.hex},
     },
     right = {
       {theme.NormalFloat.fg.hex, theme.NormalFloat.bg.hex},
     },
   },
   replace = {
     left = {
       {theme.String.fg.hex, theme.Macro.fg.darken(20).hex},
     },
     middle = {
       {theme.Pmenu.fg.hex, theme.Pmenu.bg.hex},
     },
     right = {
       {theme.NormalFloat.fg.hex, theme.NormalFloat.bg.hex},
     },
   },
 }

-- Use lightlines helper functions to correct cterm holes in our theme.
local lightline_theme_filled = vim.fn['lightline#colorscheme#fill'](lightline_theme)

-- define our theme for lightline to find
vim.g['lightline#colorscheme#default#palette'] = lightline_theme_filled

-- Technically, that's all you have to do for your lightline theme to
-- be applied but if you want real-time feedback while designing it, you must
-- include some extra code which forces lightline to notice the changes.
--
-- It's recommended you comment out the following code if you're not actively
-- editing your lightline theme.
--
-- You may find realtime performance unacceptable while changes are being
-- propagated back to and applied by vimscript, if this is a problem,
-- you can disable lush.ify() on the buffer (save then `:e!`), then when you
-- wish to preview your changes, save and run `:luafile %`.
--
-- Consider making a temporary mapping while working:
--
--   `:nmap <leader>llr :luafile %<CR>`

-- Lightline is a little tempermental about when you tell it to update it's
-- theme, so we push it to vim's scheduler.
vim.schedule(function()
  -- lightline#colorscheme() has a side effect of not always
  -- applying updates until after leaving insert mode.
  -- vim.fn['lightline#colorscheme']()

   -- this will apply more uniforming across all modes, but may have
   -- unacceptable performance impacts.
   -- vim.fn['lightline#disable']()
   -- vim.fn['lightline#enable']()
end)
