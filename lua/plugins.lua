local fn = vim.fn
local status, packer = pcall(require, "packer")
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if (not status) then
  print("Installing Packer ...")

  fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim.git', install_path })
  vim.o.runtimepath = vim.fn.stdpath('data') .. 'site/pack/*/start/*,' .. vim.o.runtimepath

  print("Packer Installed ...")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- File Browser
  use 'nvim-lua/plenary.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-telescope/telescope.nvim'
  use "nvim-telescope/telescope-file-browser.nvim"

  -- UI helpers
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Intelisense
  use 'glepnir/lspsaga.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use "terrortylor/nvim-comment"
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'onsails/lspkind-nvim' -- Pictograms

  -- Snippets
  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

  -- Theme
  use 'folke/tokyonight.nvim'

  -- Package Manager
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- Formater and linter
  use 'jose-elias-alvarez/null-ls.nvim'

  -- GIT
  use 'sindrets/diffview.nvim'
  use 'f-person/git-blame.nvim'
  use 'lewis6991/gitsigns.nvim'


end)
