set nocompatible

" Set up vundle
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" Bundles (use :BundleInstall to install)
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://git.wincent.com/command-t.git'

let mapleader = ","
syntax on

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Set colours
colorscheme solarized
set background=light

" Highlight the 80 column line
set colorcolumn=81
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Set GUI display preferences
set ruler
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

" Set locations
set spellfile=~/.vimwords.add
set directory=~/.vim/swap,.


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


if has("mouse")
    set mouse=a
endif
