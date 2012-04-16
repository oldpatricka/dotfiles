" Set up vundle
set nocompatible
"filetype on 
"filetype off  " required!
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" Bundles (use :BundleInstall to install)
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'git://git.wincent.com/command-t.git'

"filetype plugin indent on
let mapleader = ","
syntax on
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ruler
set incsearch
set smartcase
set backspace=2
set spellfile=~/.vimwords.add
set bg=light
set expandtab
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set directory=~/.vim/swap,.
autocmd BufRead *.as set filetype=actionscript

if has("mouse")
    set mouse=a
endif
