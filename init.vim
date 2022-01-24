" basic setting
lua require('basic')

" keybindings setting
lua require('keybindings')

" Background and colorscheme setting
set background=dark
colorscheme zephyr

" packer setting
lua require('plugins')

" plugins setting
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('lsp/setup')
lua require('lsp/nvim-cmp')

