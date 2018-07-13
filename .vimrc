call pathogen#infect()

" for the looks
set ruler
set number
set cursorline
set lazyredraw
colorscheme badwolf

if !exists("g:syntax_on")
    syntax enable
endif

" for the search
set hlsearch
set ignorecase
set showmatch
set incsearch
set wildmenu

" done with the search
nnoremap<F3> :noh<CR>

filetype plugin indent on
set autoindent

" spaces rule, tabs drool. four spaces drool more.
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype scala setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype dot setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd Filetype markdown setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype yml setlocal ts=2 sts=2 sw=4 expandtab

" folding?
set foldenable
set foldlevelstart=20
set foldmethod=syntax
nnoremap <space> za

" CtrlP settings
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set nocompatible
