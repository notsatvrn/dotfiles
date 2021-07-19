-- general and telescope keybinds
vim.api.nvim_set_keymap([[v]], [[<BS>]], [[<Del>]], {noremap = false})
vim.api.nvim_set_keymap([[v]], [[<C-C>]], [[y]], {noremap = false})
vim.api.nvim_set_keymap([[v]], [[<C-V>]], [[p]], {noremap = false})
vim.api.nvim_set_keymap([[v]], [[<C-Z>]], [[u]], {noremap = false})
vim.api.nvim_set_keymap([[n]], [[<C-Z>]], [[u]], {noremap = false})
vim.api.nvim_set_keymap([[i]], [[<C-Z>]], [[u]], {noremap = false})
vim.api.nvim_set_keymap([[n]], [[<C-s>]], [[:Telescope find_files<CR>]], {noremap = false})
