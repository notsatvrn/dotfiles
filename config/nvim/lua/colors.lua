-- better colors
vim.cmd([[syntax on]])
vim.cmd([[filetype plugin on]])
vim.cmd([[colorscheme zerodark]])
vim.g.python_highlight_all = 1
if vim.fn.has([[termguicolors]]) == 1 then
  vim.opt.termguicolors = true
  vim.cmd([[hi Comment cterm=italic gui=italic]])
  vim.cmd([[hi NonText guifg=#393F4A]])
  vim.cmd([[hi VertSplit guibg=#393F4A guifg=#393F4A]])
  vim.cmd([[hi SignColumn guibg=#31353F]])
  vim.cmd([[hi EndOfBuffer guifg=bg]])
end
