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

" make pasting possible in terminal so it doesn't mess up indents
set pastetoggle=<F2>

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
autocmd Filetype json setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yml setlocal ts=2 sts=2 sw=4 expandtab
autocmd Filetype sml setlocal ts=4 sts=4 sw=4 expandtab
set tabstop=4
set shiftwidth=4
set expandtab

" folding?
set foldenable
set foldlevelstart=20
set foldmethod=syntax
nnoremap <space> za

" CtrlP settings
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0

"linting
let g:ale_linters = { 'python': ['flake8'], 'rust': ['rls'] }
let g:ale_completion_enabled = 1
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"
let g:ale_rust_rls_toolchain = 'stable'

" vim-better-sml
augroup vimbettersml
  au!

  " ----- Keybindings -----

  au FileType sml nnoremap <silent> <buffer> <leader>t :SMLTypeQuery<CR>
  au FileType sml nnoremap <silent> <buffer> gd :SMLJumpToDef<CR>

  " open the REPL terminal buffer
  au FileType sml nnoremap <silent> <buffer> <leader>is :SMLReplStart<CR>
  " close the REPL (mnemonic: k -> kill)
  au FileType sml nnoremap <silent> <buffer> <leader>ik :SMLReplStop<CR>
  " build the project (using CM if possible)
  au FileType sml nnoremap <silent> <buffer> <leader>ib :SMLReplBuild<CR>
  " for opening a structure, not a file
  au FileType sml nnoremap <silent> <buffer> <leader>io :SMLReplOpen<CR>
  " use the current file into the REPL (even if using CM)
  au FileType sml nnoremap <silent> <buffer> <leader>iu :SMLReplUse<CR>
  " clear the REPL screen
  au FileType sml nnoremap <silent> <buffer> <leader>ic :SMLReplClear<CR>
  " set the print depth to 100
  au FileType sml nnoremap <silent> <buffer> <leader>ip :SMLReplPrintDepth<CR>

  " ----- Other settings -----

  " Uncomment to try out conceal characters
  "au FileType sml setlocal conceallevel=2

  " Uncomment to try out same-width conceal characters
  "let g:sml_greek_tyvar_show_tick = 1
augroup END
let g:sml_repl_backend = 'vimux'

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

" Vimdiff
autocmd FilterWritePre * if &diff | setlocal wrap< | endif
