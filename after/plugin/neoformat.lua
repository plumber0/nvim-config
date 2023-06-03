vim.cmd [[
  autocmd FileType javascript setlocal formatprg=prettier\ --stdin
  autocmd BufWritePre *.js Neoformat
]]


vim.cmd [[
  autocmd FileType python setlocal formatprg=black\ -
  autocmd BufWritePre *.py Neoformat
]]

