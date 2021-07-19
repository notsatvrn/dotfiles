-- configuration
require([[telescope]]).setup{
  defaults = {
    vimgrep_arguments = {
      [[rg]],
      [[--color=never]],
      [[--no-heading]],
      [[--with-filename]],
      [[--line-number]],
      [[--column]],
      [[--smart-case]]
    },
    prompt_prefix = [[> ]],
    selection_caret = [[> ]],
    entry_prefix = [[  ]],
    initial_mode = [[insert]],
    selection_strategy = [[reset]],
    sorting_strategy = [[descending]],
    layout_strategy = [[horizontal]],
    layout_config = {
      horizontal = {
        mirror = false,
        width = 0.6,
        height = 0.6,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require[[telescope.sorters]].get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require[[telescope.sorters]].get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { [[─]], [[│]], [[─]], [[│]], [[┌]], [[┐]], [[┘]], [[└]] },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ["COLORTERM"] = "truecolor" },
    file_previewer = require[[telescope.previewers]].vim_buffer_cat.new,
    grep_previewer = require[[telescope.previewers]].vim_buffer_vimgrep.new,
    qflist_previewer = require[[telescope.previewers]].vim_buffer_qflist.new,
    buffer_previewer_maker = require[[telescope.previewers]].buffer_previewer_maker
  }
}

-- colors
vim.cmd([[hi TelescopeSelection      guifg=#61AFEF guibg=#282C34 gui=bold]])
vim.cmd([[hi TelescopeSelectionCaret guifg=#61AFEF]])
vim.cmd([[hi TelescopeMultiSelection guifg=#61AFEF]])
vim.cmd([[hi TelescopeNormal         guibg=#282C34]])
vim.cmd([[hi TelescopeBorder         guifg=#ABB2BF]])
vim.cmd([[hi TelescopePromptBorder   guifg=#ABB2BF]])
vim.cmd([[hi TelescopeResultsBorder  guifg=#ABB2BF]])
vim.cmd([[hi TelescopePreviewBorder  guifg=#ABB2BF]])
vim.cmd([[hi TelescopeMatching       guifg=#61AFEF]])
vim.cmd([[hi TelescopePromptPrefix   guifg=#61AFEF]])
