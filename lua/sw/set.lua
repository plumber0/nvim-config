vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber= true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.smartindent = true

vim.opt.wrap = false


vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50



vim.g.mapleader = " "
vim.opt.hlsearch = false

vim.api.nvim_exec([[
  augroup JSON
    autocmd!
    autocmd FileType json setlocal foldmethod=indent
  augroup END
]], false)

vim.api.nvim_exec([[
  augroup HTML
    autocmd!
    autocmd FileType html setlocal foldmethod=indent
  augroup END
]], false)

vim.opt.termguicolors = true



-- settings for emmet----
--
--
--
-- Allow emmet to expand inside jsx files
vim.g.user_emmet_mode = 'n'
vim.g.user_emmet_settings = {
  typescript = {
    extends = 'jsx'
  },
  javascript = {
    extends = 'jsx'
  },
  jsx = {
    extends = 'html'
  },
}

-- Equivalent of `let g:user_emmet_install_global = 0`
vim.g.user_emmet_install_global = 0

-- Equivalent of `autocmd FileType html,css EmmetInstall`
vim.cmd [[
  autocmd FileType html,css,jsx,javascript.jsx,typescript.tsx EmmetInstall
]]

-- Equivalent of `let g:user_emmet_leader_key='<C-Z>'`
vim.g.user_emmet_leader_key='<leader>m'

-- settings for emmet---
