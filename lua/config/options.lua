-- Configure mapleader and maplocalleader before loading lazy.vim
-- Mapleader is for custom shortcuts that I define
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

vim.opt.clipboard = "unnamedplus" -- use system keyboard
vim.opt.nu = true -- set line numbers

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hid = true -- hide buffer when abandoned
vim.opt.backspace = eol, start, indent

vim.opt.hlsearch = true
vim.opt.syntax = on
vim.opt.ignorecase = true

vim.opt.showmatch = true -- highlight brackets

-- Diagnostics
vim.diagnostic.config({
  virtual_text = true, -- inline suggestions
  underline = true,
  update_in_insert = false, -- only update diagnostics on leaving insert
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = 'Go to definition' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr, desc = 'Hover documentation' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'Code action' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { buffer = bufnr, desc = 'Show diagnostics' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = bufnr, desc = 'Next diagnostic' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = bufnr, desc = 'Previous diagnostic' })

