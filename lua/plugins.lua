return require('packer').startup(function()
  -- Theme: zephyr
  use 'glepnir/zephyr-nvim'
  -- Packer plugin manage
  use 'wbthomason/packer.nvim'
  -- Plugin: treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- Plugin: nvim-tree
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
  -- Plugin: lspconfig
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
  -- Plugin: nvim-cmp et al.
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  -- Plugin: vsnip et al.
  use 'hrsh7th/vim-vsnip'    -- {name = 'vsnip'}
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'rafamadriz/friendly-snippets'
  -- Plugin: lspkind
  use 'onsails/lspkind-nvim'
end)

