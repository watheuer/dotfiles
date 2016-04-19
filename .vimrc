syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
set number

set nocompatible
filetype off

let g:airline_powerline_fonts = 1
set tabstop=2
set shiftwidth=2
set expandtab
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string"

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'shougo/vimproc.vim'
Plugin 'shougo/vimshell.vim'
Plugin 'raimondi/delimitmate'
Plugin 'valloric/youcompleteme'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
set laststatus=2
filetype plugin indent on

let delimitMate_expand_cr = 1
map <C-n> :NERDTreeToggle<CR>