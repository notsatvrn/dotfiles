-- main autocommands
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])
vim.cmd([[autocmd BufNewFile,BufRead *.md setlocal spell]])
vim.cmd([[autocmd FileType markdown set wrap]])
