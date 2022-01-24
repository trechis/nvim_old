require'nvim-treesitter.configs'.setup {
  -- install language parser
  -- :TSInstallInfo
  ensure_installed = {"markdown", "r", "python", "html", "vim", "yaml", },
  -- highligh code
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- incremental selection
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  -- Treesitter formating . NOTE: This is an experimental feature.
  indent = {
    enable = true
  }
}
-- open Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
