" ----------------------------------------------------------------------------
" -- PLUGINS
" ----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'prabirshrestha/asyncomplete.vim',

Plug 'tjammer/blayu.vim',
Plug 'ayu-theme/ayu-vim',
Plug 'tpope/vim-fugitive',
Plug 'leafgarland/typescript-vim',
Plug 'vim-scripts/AutoComplPop',
Plug 'dyng/ctrlsf.vim',
Plug 'neoclide/vim-jsx-improve',
" Plug 'jiangmiao/auto-pairs',
Plug 'tpope/vim-surround',
Plug 'airblade/vim-gitgutter',
Plug 'valloric/listtoggle',
Plug 'xuyuanp/nerdtree-git-plugin',
Plug 'davidklsn/vim-sialoquent',
Plug 'pangloss/vim-javascript',
Plug 'jparise/vim-graphql',
Plug 'dart-lang/dart-vim-plugin'
call plug#end()

" ----------------------------------------------------------------------------
" -- PLUGINS
" ----------------------------------------------------------------------------
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" ----------------------------------------------------------------------------
" -- SETTINGS
" ----------------------------------------------------------------------------
" set autochdir
set incsearch
set nocompatible
set backspace=indent,eol,start
set history=50
set showcmd
set number
set relativenumber
set cursorline
set ignorecase
set smartcase
set noswapfile
set mouse=a
set wildmenu
set wildignore+=*/node_modules/*
set undofile
set undodir=~/.vimundo/
set laststatus=2
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" syntax
filetype plugin indent on

" colors
set termguicolors
set background=dark
set t_Co=256
" colorscheme bionik
" colorscheme hybrid
" colorscheme PaperColor
" colorscheme CandyPaper
" let ayucolor="dark"
" colorscheme ayu
" colorscheme sialoquent
" colorscheme made_of_code
" colorscheme wasabi256
" colorscheme wombat256
colorscheme wombat
" colorscheme solarized
" colorscheme moria

" indentation
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set smartindent
set autoindent

" ----------------------------------------------------------------------------
" -- MAPPINGS
" ----------------------------------------------------------------------------
let mapleader = ","
inoremap kj <Esc>
nnoremap <leader>e :e $MYVIMRC<cr>
nnoremap <F2> :NERDTreeToggle<cr>
nnoremap <c-e> :CtrlPMRU<cr>
nnoremap <leader><space> :nohlsearch<cr>
nmap <c-s> :w<CR>
nnoremap <c-j> 5j
nnoremap <c-k> 5k
nnoremap <c-l> :tabn<cr>
nnoremap <c-h> :tabp<cr>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
nmap <c-f> <Plug>CtrlSFPrompt
nmap <c-f>n <Plug>CtrlSFCwordPath
imap <leader>w <esc>:w<CR>li
nmap <leader>w :w<CR>
imap <leader>q <esc>:q<CR>
nmap <leader>q :q<CR>
inoremap <c-l> <esc><s-a>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <Leader>f :echo expand('%:p')<CR>

" asynccomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" completions

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" ----------------------------------------------------------------------------
" -- COMMANDS
" ----------------------------------------------------------------------------
command! WQ wq
command! Wq wq
command! W w
command! Q q

" ----------------------------------------------------------------------------
" -- AUTOCMDS
" ----------------------------------------------------------------------------
augroup BufWritePost
	autocmd! bufwritepost .vimrc source % | echom "Reloaded .vimrc" | redraw
augroup END

" ----------------------------------------------------------------------------
" --- PLUGINS
" ----------------------------------------------------------------------------
let g:NERDTreeMouseMode=3

let g:lt_location_list_toggle_map = '<F3>'
let g:lt_quickfix_list_toggle_map = '<F4>'

" ----------------------------------------------------------------------------
" --- FUNCTIONS
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" -- EXPERIMENTS
" ----------------------------------------------------------------------------
