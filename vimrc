" === Vim Basic Settings ===

" Makee vim imcompatible to vi.
set nocompatible
set modelines=0

" ===  Configure Vundle ===

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

" Color schemes
Plugin 'altercation/vim-colors-solarized'

" Required, plugins available after.
call vundle#end()
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = '/data/Code/C++/.ycm_extra_conf.py'

" === Other settings == 

" TAB settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showtabline=4
set ruler

" More common settings.
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell

set history=1000
set undolevels=10000

set nobackup
set noswapfile

set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start

set pastetoggle=<F2>
set number
set norelativenumber

set undofile
set undodir=/tmp

set lazyredraw
set matchtime=3

set colorcolumn=120
highlight ColorColumn ctermbg=darkgrey

syntax enable
set background=dark
colorscheme solarized

"
" maps NERDTree to F10
"
map <silent> <F10> :NERDTreeToggle<CR>
map! <silent> <F10> <ESC>:NERDTreeToggle<CR>

se hlsearch
" Ctrl-L clears the highlight from the last search
noremap <C-l> :nohlsearch<CR><C-l>
noremap! <C-l> <ESC>:nohlsearch<CR><C-l>
