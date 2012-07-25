set nocompatible

" Set up vundle
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" Bundles (use :BundleInstall to install)
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://github.com/kien/ctrlp.vim.git'
Bundle 'klen/python-mode'

let mapleader = ","
syntax on

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Set colours
colorscheme solarized
set background=light

" Need this for python mode
filetype plugin indent on

" Disable Python folding
let g:pymode_folding = 0
let g:pymode_rope_goto_def_newwin = "new"
let g:pymode_lint_ignore = "W,E501"
"  Highlight the 80 column line
set colorcolumn=81
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Set GUI display preferences
set nonumber
set ruler
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/build/*,*/eggs/*

" Set locations
set spellfile=~/.vimwords.add
set directory=~/.vim/swap,.

" Change tab navigation
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Set text editing behaviour
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartcase
set backspace=2
set expandtab
set incsearch

" Setup Ctrl-P
let g:ctrlp_map = '<c-t>'
let g:ctrlp_working_path_mode = 2

" Strip trailing whitespace oh man it is the worst
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map <leader>s :call StripWhitespace ()<CR>

set pastetoggle=<leader>p


if has("mouse")
    set mouse=a
endif
