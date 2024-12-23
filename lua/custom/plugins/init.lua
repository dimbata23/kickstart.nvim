-- You can add your own plugins here or in other files in this directory!
-- I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'Mofiqul/vscode.nvim',
    config = function()
      local c = require('vscode.colors').get_colors()
      require('vscode').setup {
        -- Alternatively set style in setup
        style = 'light',

        -- Enable transparent background
        transparent = true,

        -- Enable italic comment
        italic_comments = true,

        -- Underline `@markup.link.*` variants
        underline_links = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,

        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        },
      }

      require('vscode').load()
    end,
  },

  -- Alright, a but dull
  -- {
  --   'jonathanfilip/vim-lucius',
  --   config = function()
  --     -- Set the colorscheme to lucius (light variant)
  --     vim.g.lucius_style = 'light'
  --     vim.o.termguicolors = true
  --     vim.g.lucius_contrast_bg = 'high'
  --     vim.cmd 'colorscheme lucius'
  --   end,
  -- },

  -- Alright, quite pastel
  -- {
  --   'junegunn/seoul256.vim',
  --   config = function()
  --     vim.g.seoul256_variant = 'light'
  --     vim.g.seoul256_background = 256
  --
  --     vim.cmd 'colorscheme seoul256'
  --   end,
  -- },

  -- Similar to tokyo, but white
  -- {
  --   'rakr/vim-one',
  --   config = function()
  --     vim.cmd 'colorscheme one'
  --     vim.o.termguicolors = true
  --   end,
  -- },

  -- This is actually pretty good (with some customization)
  {
    'yorik1984/newpaper.nvim',
    priority = 1000,
    config = true,
  },
}
