set nocompatible
filetype on
filetype off

" uses https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Update with :PlugUpdate
Plug 'gmarik/vundle'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'tmhedberg/matchit'
Plug 'airblade/vim-gitgutter'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-dispatch'
Plug 'kchmck/vim-coffee-script'
Plug 'groenewege/vim-less'
Plug 'derekwyatt/vim-scala'
Plug 'tfnico/vim-gradle'
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'

call plug#end()
filetype plugin indent on    " required

let mapleader = ","
syntax on

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Set colours
colorscheme solarized
set background=light
highlight clear SignColumn

" Need this for python mode
filetype plugin indent on

" Set vim-flake8 settings
autocmd BufWritePost *.py call Flake8()

"  Highlight the 80 column line
set colorcolumn=81
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
au VimEnter * highlight clear SignColumn

" Set GUI display preferences
set nonumber
set ruler
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/build/*,*/eggs/*

hi SignColumn ctermbg=LightGray
hi scmLineAdded ctermbg=LightGray
hi scmLineChanged ctermbg=LightGray
hi scmLineRemoved ctermbg=LightGray

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

" tab size of 2 for html
autocmd FileType html,htmldjango setlocal shiftwidth=2 tabstop=2 expandtab

" Setup Ctrl-P
let g:ctrlp_map = '<c-t>'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules'
"
" Strip trailing whitespace oh man it is the worst
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map <leader>s :call StripWhitespace ()<CR>

" nice paste toggle
set pastetoggle=<leader>p

" put backups somewhere that isn't annoying
set backupdir=~/.vim/backup

" make cron happy
set backupskip=/tmp/*,/private/tmp/*

" make Jenkinsfiles be interpreted as groovy
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
