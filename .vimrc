set rtp+=~/.vim/bundle/Vundle.vim

" Colors and highlighting
syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
set number

" Tabs and spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType python setlocal sw=4
autocmd FileType python setlocal ts=4
autocmd FileType python setlocal sts=4
autocmd FileType java setlocal sw=4
autocmd FileType java setlocal ts=4
autocmd FileType java setlocal sts=4
autocmd FileType json setlocal sw=4
autocmd FileType json setlocal ts=4
autocmd FileType json setlocal sts=4
autocmd FileType javascript setlocal sw=4
autocmd FileType javascript setlocal ts=4
autocmd FileType javascript setlocal sts=4

" DelimitMate settings
let delimitMate_expand_cr = 1
set backspace=2 " make backspace work like you'd think

" Airline settings
let g:airline_powerline_fonts = 1
set laststatus=2 " always show status bar

" YCM settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf =0

" Syntastic settings
set completeopt-=preview
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Grammarous filetypes
let g:grammarous#default_comments_only_filetypes = {'*' : 1, 'help' : 0, 'markdown' : 0,}

" NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'shougo/vimproc.vim'
Plugin 'raimondi/delimitmate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'marijnh/tern_for_vim'
Plugin 'lervag/vimtex'
Plugin 'rhysd/vim-grammarous'
call vundle#end()

