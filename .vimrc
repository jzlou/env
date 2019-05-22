execute pathogen#infect()

" for the looks
set ruler
set showcmd
set cursorline
set lazyredraw
set background=dark
colorscheme badwolf
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

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

" make a json nice
nmap =j :%!python -m json.tool<CR>

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

let g:ale_linters = { 'python': ['flake8'] }

set nocompatible

"for tablet okness
imap jk <esc>

" stop the bells
set visualbell

" Pytest
nmap <silent><Leader>f <Esc>:Pytest file<CR>

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
nmap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Nerdtree
autocmd vimenter * NERDTree
