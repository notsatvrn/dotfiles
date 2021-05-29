set iskeyword+=-
set formatoptions-=cro

syntax on
filetype plugin on
set nocompatible
set shortmess=I
set hidden
set nowrap
set whichwrap+=<,>,[,],h,l
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=2
set mouse=a
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=2
set number
set cursorline
set background=dark
set showtabline=2
set noshowmode
set nobackup
set nowritebackup
set shortmess+=c
set signcolumn=yes
set updatetime=300
set timeoutlen=100
set clipboard=unnamedplus
set incsearch
set guifont=JetBrainsMono\ Nerd\ Font\ Mono

" Colors.
colorscheme gruvbox
let g:python_highlight_all=1
let g:gruvbox_contrast_dark = 'soft'
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

hi Comment cterm=italic
let g:nvcode_termcolors=256
if (has("termguicolors"))
    set termguicolors
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText guibg=NONE ctermbg=NONE
    hi LineNr guibg=NONE ctermbg=NONE
endif

" Autocmds.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType markdown set wrap 
autocmd BufWritePre *.rb :%s/\s\+$//e

" Normie-ifying Neovim.
vmap <BS> <Del>
map <C-C> y
map <C-V> p
map <C-Z> u

" You can't stop me!
cmap w!! w !sudo tee %

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
