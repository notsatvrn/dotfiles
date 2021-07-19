-- configuration
vim.g.gitgutter_sign_added = [[++]]
vim.g.gitgutter_sign_modified = [[~~]]
vim.g.gitgutter_sign_removed = [[xx]]
vim.g.gitgutter_sign_removed_first_line = [[xx]]
vim.g.gitgutter_sign_modified_removed = [[~~]]
vim.g.gitgutter_preview_win_floating = 1
vim.g.gitgutter_enabled = 1

-- colors
vim.cmd([[hi GitGutterAdd    guifg=#9BC379 guibg=#31353F ctermfg=2]])
vim.cmd([[hi GitGutterChange guifg=#61AFEF guibg=#31353F ctermfg=3]])
vim.cmd([[hi GitGutterDelete guifg=#E56A73 guibg=#31353F ctermfg=1]])
