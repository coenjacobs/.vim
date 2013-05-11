" Fire up Pathogen
source ~/.dotfiles/vim/bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect( 'bundle/{}', '~/.dotfiles/vim/bundle/{}' )
execute pathogen#helptags()

" Set options
set nocompatible " Vim settings over vi defaults
set backspace=indent,eol,start " Make backspace behave in a sane manner.
set number " Add line numbers
set hlsearch " Highlight search results
set tabstop=4 " Tab size to 4 spaces
set ignorecase " Default to ignoring case in searches
set incsearch " Enable incremental search by default
set autoindent " Auto indent new lines
set smartindent " .. and be smart with it!

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Disable arrow keys - gotta get used to hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
