vim.cmd [[
  autocmd FileType javascript setlocal formatprg=prettier\ --stdin
  autocmd BufWritePre *.js Neoformat
  autocmd BufWritePre *.jsx Neoformat
]]


vim.cmd [[
  autocmd FileType html setlocal formatprg=prettier\ --stdin
  autocmd BufWritePre *.html Neoformat
  autocmd BufWritePre *.html Neoformat
]]


vim.cmd [[
  autocmd FileType python setlocal formatprg=black\ -
  autocmd BufWritePre *.py Neoformat
]]

