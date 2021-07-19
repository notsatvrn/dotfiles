require([[lualine]]).setup{
  options = {
    theme = [[zerodark]],
    section_separators = {[[]]},
    component_separators = {[[|]]},
    extensions = {[[fugitive]]},
    sections = {lualine_a = {[[mode]]}}
  }
}
