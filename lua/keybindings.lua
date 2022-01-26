-- <+++>
-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- <+++>
-- initial setting for keymap
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
-- local opt = {noremap = true}

-- <+++>
-- normal mode
map("n", "R", ":source $MYVIMRC<CR>", opt)
map("n", "va", "<ESC>ggvG", opt)  -- visual all
map("n", "ya", "<ESC>ggvGy", opt)  -- yank all
map("n", "da", "<ESC>ggdGy", opt)  -- delect all
-- ctrl
map("n", "<C-u>", "10k", opt)
map("n", "<C-s>", ":w<CR>", opt)  -- save
map("n", "<C-d>", "10j", opt)
map("n", "<C-c>", "\"+y", opt)  -- copy
-- map("n", "<C-q>", ":q<CR>", opt)  -- quit
-- map("n", "<C-v>", "<C-q>", opt)
-- map("n", "<CR>", "vaf", opt)  -- select the block
-- alt
map("n", "<A-o>", ":NvimTreeToggle<CR>", opt)  -- open file
map("n", "<A-p>", ":MarkdownPreview<CR>", opt)  -- preview markdown
map("n", "<A-/>", "/<+++><CR>", opt)  -- search mark
-- leader
map("n", "<leader>m", "`", opt)  -- go to marker x
map("n", "<leader>s", ":w<CR>", opt)  -- save
map("n", "<leader>q", ":wq<CR>", opt)  -- save and quit
map("n", "<leader><leader>q", ":q!<CR>", opt)  -- quit without save
map("n", "<leader>p", ":PackerSync<CR>", opt)  -- packer sync
-- window
map("n", "<leader>ww", "<C-w>w", opt)
map("n", "<leader>wv", "<C-w>v", opt)
map("n", "<leader>ws", "<C-w>s", opt)
map("n", "<leader>wh", "<C-w>h", opt)
map("n", "<leader>wj", "<C-w>j", opt)
map("n", "<leader>wk", "<C-w>k", opt)
map("n", "<leader>wl", "<C-w>l", opt)
map("n", "<leader>wH", "<C-w>H", opt)
map("n", "<leader>wJ", "<C-w>J", opt)
map("n", "<leader>wK", "<C-w>K", opt)
map("n", "<leader>wL", "<C-w>L", opt)
map("n", "<leader>wr", "<C-w>r", opt)
map("n", "<leader>wx", "<C-w>x", opt)
map("n", "<leader>wy", "<C-W><", opt)
map("n", "<leader>wu", "<C-W>-", opt)
map("n", "<leader>wi", "<C-W>+", opt)
map("n", "<leader>wo", "<C-W>>", opt)
map("n", "<leader>wp", "<C-W>=", opt)
-- Tab
map("n", "<leader>tt", "<C-PageDown>", opt)
map("n", "<leader>tn", ":tabnew<CR>=", opt)
map("n", "<leader>tq", ":tabclose<CR>=", opt)
map("n", "<leader>th", "<C-PageUp>", opt)
map("n", "<leader>tj", "<C-PageUp>", opt)
map("n", "<leader>tk", "<C-PageDown>", opt)
map("n", "<leader>tl", "<C-PageDown>", opt)
map("n", "<leader>tq", "<C-W>c", opt)
-- New
map("n", "<leader>nw", "<C-w>v", opt)  -- new window
map("n", "<leader>nt", ":tabnew<CR>=", opt)  -- new tab

-- <+++>
-- visual mode
-- map("v", "<C-s>", "<ESC>:w<CR>v", opt)
map("v", "<C-c>", "\"+y", opt)
-- map("v", "va", "<ESC>ggvG", opt)  -- visual all
-- map("v", "ya", "<ESC>ggvGy", opt)  -- yank all
-- map("v", "da", "<ESC>ggvGy", opt)  -- delect all
map("v", "<A-/>", "mz<ESC>/<+++><CR>`zvn", opt)  -- search mark
-- leader
map("v", "<leader>m", "`", opt)  -- go to marker x

-- <+++>
-- visual line mode
map("x", "<leader>m", "`", opt)  -- go to marker x
map("x", "<A-/>", "mz<ESC>/<+++><CR>`zVn", opt)  -- search mark

-- <+++>
-- visual block mode

-- <+++>
-- insert mode
map("i", "<C-s>", "<ESC>:w<CR>a", opt)
map("i", "<A-/>", "<ESC>/<+++><CR>", opt)  -- search mark
-- Writing/Markdown enhanced
map("i", ",f", "<ESC>/<++><CR>:nohlsearch<CR>i<DEL><DEL><DEL><DEL>", opt)  -- search mark
map("i", ",b", "****<SPACE><++><ESC>F*hi", opt)  -- bold
map("i", ",i", "**<SPACE><++><ESC>F*i", opt)  -- italic
map("i", ",bi", "******<SPACE><++><ESC>F*2hi", opt)  -- bold italic
map("i", ",ib", "******<SPACE><++><ESC>F*2hi", opt)  -- italic bold
map("i", ",h", "====<SPACE><++><ESC>F=hi", opt)  -- highlight
map("i", ",d", "~~~~<SPACE><++><ESC>F~hi", opt)  -- delect
map("i", ",cq", "``<SPACE><++><ESC>F`i", opt)  -- code quote
map("i", ",cb", "<CR>```<CR><++><CR>```<CR><CR><++><ESC>4kA", opt)  -- code block
map("i", ",cr", "[]<++><ESC>4hi", opt)  -- cite references
map("i", ",cp", "([@fig:])<++><ESC>F]i", opt)  -- cite photo
map("i", ",cf", "([@fig:])<++><ESC>F]i", opt)  -- cite figure
map("i", ",q", "<CR>><SPACE><CR><CR><++><ESC>2kA", opt)  -- cite figure
map("i", ",p", "![](<++>){#fig:<++>}<SPACE><++><ESC>F]i", opt)  -- photo
map("i", ",tk", "-<SPACE>[<SPACE>]<SPACE><CR><CR><++><ESC>2kA", opt)  -- task
map("i", ",tb", "<CR>|<SPACE><SPACE>|<SPACE><++><SPACE>|<CR>|<SPACE>----<SPACE>|<SPACE>----<SPACE>|<CR>|<SPACE><++><SPACE>|<SPACE><++><SPACE>|<CR>|<SPACE><++><SPACE>|<SPACE><++><SPACE>|<CR><CR><++><CR><ESC>6kla", opt)  -- table
map("i", ",lk", "[](<++>)<SPACE><++><ESC>F]i", opt)  -- link
map("i", ",lo", "1.<SPACE><CR><CR><++><ESC>2kA", opt)  -- list order
map("i", ",lu", "-<SPACE><CR><CR><++><ESC>2kA", opt)  -- link unorder
map("i", ",mm", "<CR><+++><ESC>Vgco", opt)  -- marker
map("i", ",ml", "<ESC>gcc", opt)  -- marker
map("i", ",mk", "<CR><+++><ESC>gcco", opt)  -- marker
map("i", ",mf", "<++>", opt)  -- mark find
map("i", ",nl", "<br>", opt)  -- new line
map("i", ",np", "<CR><CR>---<CR><CR>", opt)  -- new part
map("i", ",1", "#<SPACE><CR><CR><++><ESC>2kA", opt)  -- header 1
map("i", ",2", "##<SPACE><CR><CR><++><ESC>2kA", opt)  -- header 2
map("i", ",3", "###<SPACE><CR><CR><++><ESC>2kA", opt)  -- header 3
map("i", ",4", "####<SPACE><CR><CR><++><ESC>2kA", opt)  -- header 4
map("i", ",5", "#####<SPACE><CR><CR><++><ESC>2kA", opt)  -- header 5

-- <+++>
local pluginKeys = {}
-- lsp
pluginKeys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- <+++>
-- nvim-cmp
pluginKeys.cmp = function(cmp)
  return {
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- show complete
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- esc to cancel
    ['<ESC>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- confirm
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end
return pluginKeys

