-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- show 10 row up and down
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10
-- number and relativenumber
vim.wo.number = true
vim.wo.relativenumber = true
-- highlight cursor line
vim.wo.cursorline = true
-- show left sign column
vim.wo.signcolumn = "yes"
-- show right colorcolumn
vim.wo.colorcolumn = "100"
-- 2 Space = 1 Tab at the begining of the sentence
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
-- 1 Tab length & >> << move length
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
-- new line follow the previous line style
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- / search ignore case except upper case
vim.o.ignorecase = true
vim.o.smartcase = true
-- highlight search
vim.o.hlsearch = true
-- search while typing
vim.o.incsearch = true
-- show vim mode
vim.o.showmode = true
-- command height
vim.o.cmdheight = 2
-- auto read while the file modified
vim.o.autoread = true
vim.bo.autoread = true
-- wrap line
vim.o.wrap = false
vim.wo.wrap = false
-- jump to next line at the end of the line
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
-- hidden modified buffer
vim.o.hidden = true
-- mouse supported
vim.o.mouse = "a"
-- no backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime 
vim.o.updatetime = 300
-- wait mappings time
-- vim.o.timeoutlen = 100
-- split window below and right
vim.o.splitbelow = true
vim.o.splitright = true
-- no auto select autocomplet
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- autocomplet enhanced
vim.o.wildmenu = true
-- styles
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- show unseen character: space to a dot
vim.o.list = true
vim.o.listchars = "space:·"
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.pumheight = 10
-- always show tabline
vim.o.showtabline = 2
-- copy and paste enable
-- vim.g.clipboard = {
--  name = "win32yank-wsl",
--  copy = {
--    ["+"] = "win32yank.exe -i --crlf",
--    ["*"] = "win32yank.exe -i --crlf"
--  },
--  paste = {
--    ["+"] = "win32yank.exe -o --crlf",
--    ["*"] = "win32yank.exe -o --crlf"
--  },
--  cache_enable = 0,
--}
