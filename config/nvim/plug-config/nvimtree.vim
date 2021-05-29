let g:nvim_tree_ignore = [ '.git', 'node_modules' ]
let g:nvim_tree_auto_open = 1
let g:nvim_tree_auto_close = 1
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~'
let g:nvim_tree_tab_open = 1
let g:nvim_tree_width_allow_resize  = 1
let g:nvim_tree_disable_netrw = 1
let g:nvim_tree_hijack_netrw = 0
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_hide_dotfiles = 0
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

nnoremap <C-e> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

hi NvimTreeSymlink guifg=#8ec07c
hi NvimTreeFolderName guifg=#b8bb26
hi NvimTreeRootFolder guifg=#b8bb26
hi NvimTreeFolderIcon guifg=#b8bb26
hi NvimTreeEmptyFolderName guifg=#8ec07c
hi NvimTreeExecFile guifg=#ebdbb2
hi NvimTreeSpecialFile guifg=#ebdbb2
hi NvimTreeImageFile guifg=#ebdbb2
hi NvimTreeMarkdownFile guifg=#fabd2f
hi NvimTreeIndentMarker guifg=#b8bb26

hi NvimTreeLicenseIcon guifg=#ebdbb2
hi NvimTreeYamlIcon guifg=#ebdbb2
hi NvimTreeTomlIcon guifg=#ebdbb2
hi NvimTreeGitignoreIcon guifg=#ebdbb2
hi NvimTreeJsonIcon guifg=#ebdbb2

hi NvimTreeLuaIcon guifg=#ebdbb2
hi NvimTreePythonIcon guifg=#ebdbb2
hi NvimTreeShellIcon guifg=#ebdbb2
hi NvimTreeJavascriptIcon guifg=#ebdbb2
hi NvimTreeCIcon guifg=#ebdbb2
hi NvimTreeReactIcon guifg=#ebdbb2
hi NvimTreeHtmlIcon guifg=#ebdbb2
hi NvimTreeRustIcon guifg=#ebdbb2
hi NvimTreeVimIcon guifg=#ebdbb2
hi NvimTreeTypescriptIcon guifg=#ebdbb2

hi NvimTreeGitDirty guifg=#ebdbb2
hi NvimTreeGitStaged guifg=#ebdbb2
hi NvimTreeGitMerge guifg=#ebdbb2
hi NvimTreeGitRenamed guifg=#ebdbb2
hi NvimTreeGitNew guifg=#ebdbb2

hi EndOfBuffer guifg=#32302f
