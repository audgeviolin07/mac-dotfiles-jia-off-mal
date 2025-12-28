-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  
  -- Mason for managing LSP servers
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  
  -- Completion framework
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  
  -- Linting and formatting
  use('mfussenegger/nvim-lint')
  use('stevearc/conform.nvim')
  
  -- Tokyo Night theme
  use('folke/tokyonight.nvim')
  use ('nvim-tree/nvim-tree.lua')
  use ('nvim-tree/nvim-web-devicons')

  -- Discord Rich Presence
  use('andweeb/presence.nvim')

  -- Git signs in gutter
  use('lewis6991/gitsigns.nvim')

  -- Lazygit integration
  use('kdheepak/lazygit.nvim')
end)
