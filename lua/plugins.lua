-- auto download packer.nvim
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})  --default address
  --fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})  --csdn
 vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(
  function()
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
  -- Plugin: lspkind (vscode-like pictograms to neovim built-in lsp)
  use 'onsails/lspkind-nvim'
  -- Plugin: markdown preview
  use "iamcco/markdown-preview.nvim"
  -- Plugin: comment (smart and powerful comment plugin for neovim)
  use {
    'numToStr/Comment.nvim',
    config = function()
    require('Comment').setup(
    {
    toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = 'gbc',
    },      
    mappings = {
        ---Operator-pending mapping
        ---Includes `gcc`, `gbc`, `gc[count]{motion}` and `gb[count]{motion}`
        ---NOTE: These mappings can be changed individually by `opleader` and `toggler` config
        basic = true,
        ---Extra mapping
        ---Includes `gco`, `gcO`, `gcA`
        extra = true,
        ---Extended mapping
        ---Includes `g>`, `g<`, `g>[count]{motion}` and `g<[count]{motion}`
        extended = false,
    }
    }
    )
    end
    }
end)

