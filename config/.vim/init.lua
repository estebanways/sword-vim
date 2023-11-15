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
-- Packer.nvim plugins
--------------------------------------------------------------------------------
local packer = require('packer')
packer.startup(function()
    -- vim-easy-align
    use 'junegunn/vim-easy-align'

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- lazy
    --use 'folke/lazy.nvim'

    -- plugin-name
    --use '<plugin-repo>'

    -- Add other plugins here
end)

-- Run :PackerInstall to complete the installations, but do not remove the
-- existent plugins installed manually, such as packer.nvim and/or lazy.nvim.

--------------------------------------------------------------------------------
-- Lazy.nvim plugins
--------------------------------------------------------------------------------
--TODO:

--------------------------------------------------------------------------------
-- Plugin options / nvim-tree.lua
--------------------------------------------------------------------------------
-- This example plugin generates an error message when nvim starts, but ensures
-- the Lua plugins work.
-- Error detected while processing /home/esteban/config/.vim/init.lua:
-- W18: Invalid character in group name

 --[[
-- Disable netrw at the very start of your init.lua
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Empty setup using defaults
--require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

]]

--------------------------------------------------------------------------------
-- Plugin options / <plugin>
--------------------------------------------------------------------------------
