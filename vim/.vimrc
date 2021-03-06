" Set options required for Vundle
set nocompatible " Vim settings over vi defaults
filetype off

call plug#begin('~/.vim/plugged')
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'junegunn/fzf.vim'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'preservim/nerdtree'
call plug#end()

" nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<cr>
" autoclose if NERDTree is last pane open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" fzf
set rtp+=/usr/local/opt/fzf
map <C-p> :FZF<cr>

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_php_checkers=['php']
let g:syntastic_check_on_wq = 0

" Set more options
set backspace=indent,eol,start " Make backspace behave in a sane manner.
set number " Add line numbers
set ttyfast
set lazyredraw
set hlsearch " Highlight search results
set tabstop=4 " Tab size to 4 spaces
set ignorecase " Default to ignoring case in searches
set incsearch " Enable incremental search by default
set autoindent " Auto indent new lines
set smartindent " .. and be smart with it!
set backupcopy=yes
set directory=/tmp " don't pollute working directory with swap files
set noerrorbells " disable error bells
set wildmenu
set wildmode=longest:full,full " wildmenu and friends
set scrolloff=5 " leave 5 lines of space horizontal scrolling

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
