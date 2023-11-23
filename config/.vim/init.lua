--
--------------------------------------------------------------------------------
--         FILE:  init.lua
--        USAGE:  ---
--  DESCRIPTION:  Lua init file
--      OPTIONS:  ---
-- REQUIREMENTS:  Neovim 0.8.0
--         BUGS:  ---
--        NOTES:  ---
--       AUTHOR:  Esteban Herrera Castro, stv.herrera@gmail.com
--      COMPANY:  ---
--      VERSION:  1.0
--      CREATED:  14/11/23
--     REVISION:  ---
--------------------------------------------------------------------------------
--

--------------------------------------------------------------------------------
-- Sources
--------------------------------------------------------------------------------
require('mappings')
require('plugins')
require('plugin-options')
--require ('test')
-- Require file 'settings.lua' inside dir 'lua/usermod':
--require('usermod.settings')

--------------------------------------------------------------------------------
-- Packer.nvim Plugins
--------------------------------------------------------------------------------
local packer = require('packer')
packer.startup(function()
    ----------------------------------------------------------------------------
    -- Lua Plugins / Buffer line / bufferline.nvim
    ----------------------------------------------------------------------------
    -- A snazzy buffer line (with tabpage integration) for Neovim
    use {'akinsho/bufferline.nvim',
         tag = "*",
         --requires = 'nvim-tree/nvim-web-devicons'
    }

    ----------------------------------------------------------------------------
    -- Lua Plugins / Dashboard / alpha-nvim
    ----------------------------------------------------------------------------
    -- A lua powered greeter like vim-startify / dashboard-nvim
    use {
        'goolord/alpha-nvim',
        --requires = 'nvim-tree/nvim-web-devicons',  -- Replaced by other icons
    }

    ----------------------------------------------------------------------------
    -- Lua Plugins / Help / which-key.nvim
    ----------------------------------------------------------------------------
    -- It displays a popup with possible keybindings of the command you started
    -- typing.
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    ----------------------------------------------------------------------------
    -- Lua Plugins / Plugin Manager / lazy.nvim
    ----------------------------------------------------------------------------
    --use 'folke/lazy.nvim' -- A modern plugin manager for Neovim

    --[[
    ----------------------------------------------------------------------------
    -- Lua Plugins / Snippets / LuaSnip
    ----------------------------------------------------------------------------
    -- LuaSnip is a powerful and fast snippet engine for Neovim
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major
        -- (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    ]]--

    -- LuaSnip plugins list:
    use "rafamadriz/friendly-snippets" -- Snippets collection for a set of
                                       -- different programming languages.

    ----------------------------------------------------------------------------
    -- Lua Plugins / Themes / Abstract-cs
    ----------------------------------------------------------------------------
    use 'Abstract-IDE/Abstract-cs'  -- colorscheme for (neo)vim written in lua,
                                    -- specially made for Abstract Colorscheme
                                    -- with Tree-sitter support.

    ----------------------------------------------------------------------------
    -- Vimscript Plugins / Formatting / vim easy-align
    ----------------------------------------------------------------------------
    use 'junegunn/vim-easy-align'  -- Easy-to-use Vim alignment

    -- Add other plugins here
end)

-- Run :PackerInstall to complete the installations, but do not remove the
-- existent plugins installed manually, such as packer.nvim and/or lazy.nvim.

--------------------------------------------------------------------------------
-- Lazy.nvim Plugins
--------------------------------------------------------------------------------
--TODO:

--------------------------------------------------------------------------------
-- Lua Plugin options /  bufferline.nvim
--------------------------------------------------------------------------------
vim.opt.termguicolors = true  -- Required for this plugin to work

-- Enable bufferline.nvim
vim.cmd [[set hidden]]
require('bufferline').setup{
    options = {
        icons = 'both',
        icon_custom_colors = false,
        icon_padding = 1,
        icon_close_tab = '',
        icon_close_tab_modified = '●',
        close_icon_position = 'right',
        max_name_length = 18,
        max_prefix_length = 15,
        tabpages = true,
        show_tab_indicators = true,
        separator_style = 'thick',
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'extension',
    }
}

-- Offset bufferline when NERDTree is open or closed
local api = vim.api

local function toggle_offset()
    local nerdtree_open = vim.fn.exists("*NERDTreeIsOpen") and vim.fn["NERDTreeIsOpen"]()
    if nerdtree_open == 1 then
        vim.cmd("BufferLineMoveNext")
    else
        vim.cmd("BufferLineMovePrev")
    end
end

vim.cmd("autocmd! User NERDTreeToggle :lua require'bufferline_config'.toggle_offset()")

--------------------------------------------------------------------------------
-- Lua Plugin options / alpha-nvim
--------------------------------------------------------------------------------
-- This example plugin generates an error message when nvim starts, but it works
--require("alpha").setup(require("alpha.themes.startify").config)

--------------------------------------------------------------------------------
-- Lua Plugin options / which-key.nvim
--------------------------------------------------------------------------------
require("which-key").setup({
  plugins = {
    marks = true,             -- shows a list of your marks on ' and `
    registers = true,         -- shows your registers on " in NORMAL or <C-r> in INSERT mode
                              -- the presets plugin, adds help for a bunch of default keybindings in Neovim
                              -- No actual key bindings are created
    spelling = {
      enabled = true,         -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20,       -- how many suggestions should be shown in the list?
    },
    presets = {
      operators = true,       -- adds help for operators like d, y, ...
      motions = true,         -- adds help for motions
      text_objects = true,    -- help for text objects triggered after entering an operator
      windows = true,         -- default bindings on <c-w>
      nav = true,             -- misc bindings to work with windows
      z = true,               -- bindings for folds, spelling and others prefixed with z
      g = true,               -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't affect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  motions = {
    count = true,
  },
  icons = {
    breadcrumb = "»",         -- symbol used in the command line area that shows your active key combo
    separator = "➜",          -- symbol used between a key and its label
    group = "+",              -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>",    -- binding to scroll down inside the popup
    scroll_up = "<c-u>",      -- binding to scroll up inside the popup
  },
  window = {
    border = "none",           -- none, single, double, shadow
    position = "bottom",       -- bottom, top
    margin = { 1, 0, 1, 0 },   -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
    padding = { 1, 2, 1, 2 },  -- extra window padding [top, right, bottom, left]
    winblend = 0,   -- value between 0-100 0 for fully opaque and 100 for fully transparent
    zindex = 1000,  -- positive value to position WhichKey above other floating windows.
  },
  layout = {
    height = { min = 4, max = 25 },  -- min and max height of the columns
    width = { min = 20, max = 50 },  -- min and max width of the columns
    spacing = 3,                     -- spacing between columns
    align = "left",                  -- align columns left, center or right
  },
  ignore_missing = false,  -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
  show_help = true,        -- show a help message in the command line for using WhichKey
  show_keys = true,        -- show the currently pressed key and its label as a message in the command line
  triggers = "auto",       -- automatically set up triggers
  --triggers = {"<leader>"}  -- or specify a list manually
  -- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
  triggers_nowait = {
    -- marks
    "`",
    "'",
    "g`",
    "g'",
    -- registers
    '"',
    "<c-r>",
    -- spelling
    "z=",
  },
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for keymaps that start with a native binding
    i = { "j", "k" },
    v = { "j", "k" },
  },
  -- disable the WhichKey popup for certain buf types and file types.
  -- Disabled by default for Telescope
  disable = {
    buftypes = {},
    filetypes = {},
  },
})

--------------------------------------------------------------------------------
-- Lua Plugin options / lazy.nvim
--------------------------------------------------------------------------------
--TODO:

--[[
--------------------------------------------------------------------------------
-- Lua Plugin options / LuaSnip
--------------------------------------------------------------------------------
-- Use existing VS Code style snippets from a plugin
require("luasnip.loaders.from_vscode").lazy_load()

-- Load snippets from path/of/your/nvim/config/my-cool-snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./my-cool-snippets" } })

--------------------------------------------------------------------------------
-- Lua Plugin options / LuaSnip: friendly-snippets
--------------------------------------------------------------------------------
-- Add extra snippets included, from a framework to a filetype.
-- This is handled by your snippet engine and has nothing to do with this
-- snippets collection.

-- Add rails snippets to ruby.
require("luasnip").filetype_extend("ruby", {"rails"})

-- Make JavaScript React available for JavaScript files
--require("luasnip").filetype_extend("typescript", { "javascript" })

-- Exclude all javascript snippets
-- This is handled by your snippet engine and has nothing to do with this
-- snippets collection.
require("luasnip.loaders.from_vscode").load {
    exclude = { "javascript" },
}
]]--

--------------------------------------------------------------------------------
-- Lua Plugin options / Abstract-cs
--------------------------------------------------------------------------------
-- Colorscheme
--vim.cmd[[colorscheme abscs]]
