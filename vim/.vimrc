" ----------------------------------------------------------------------------
" -- PLUGINS
" ----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'

Plug 'tjammer/blayu.vim',
Plug 'ayu-theme/ayu-vim',
Plug 'dracula/vim', { 'as': 'dracula' },
Plug 'tpope/vim-fugitive',
Plug 'leafgarland/typescript-vim',
Plug 'dyng/ctrlsf.vim',
Plug 'neoclide/vim-jsx-improve',
Plug 'tpope/vim-surround',
Plug 'airblade/vim-gitgutter',
Plug 'valloric/listtoggle',
Plug 'xuyuanp/nerdtree-git-plugin',
Plug 'davidklsn/vim-sialoquent',
Plug 'pangloss/vim-javascript',
Plug 'jparise/vim-graphql',
Plug 'Shougo/neosnippet',
Plug 'Shougo/neosnippet-snippets',
Plug 'altercation/vim-colors-solarized'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" ----------------------------------------------------------------------------
" -- PLUGINS
" ----------------------------------------------------------------------------
let g:vim_jsx_pretty_colorful_config = 1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:NERDTreeMouseMode=3

let g:lt_location_list_toggle_map = '<F3>'
let g:lt_quickfix_list_toggle_map = '<F4>'

" ====== COC.vim setup =======
" ============================
"
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" 
" ============================
" ====== COC.vim setup =======

" Neosnippet
let g:neosnippet#enable_completed_snippet = 1

" ----------------------------------------------------------------------------
" -- SETTINGS
" ----------------------------------------------------------------------------
" set autochdir
set ttimeoutlen=100
set incsearch
set nocompatible
set backspace=indent,eol,start
set history=50
set foldmethod=indent
set foldlevel=20
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
set completeopt=longest,menuone
set laststatus=2
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" syntax
filetype plugin indent on

" colors
set t_Co=256 
set termguicolors
set background=dark
" colorscheme dracula
colorscheme getafe
" colorscheme fx
" colorscheme flatlandia
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
" colorscheme wombat
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
nnoremap <F5> za
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
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
inoremap <c-l> <esc><s-a>
nnoremap <Leader>f :echo expand('%:p')<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" asynccomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" completions
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
augroup write_post
	autocmd!
  autocmd bufwritepost .vimrc source % | echom "Reloaded .vimrc" | redraw
augroup END

" ----------------------------------------------------------------------------
" --- FUNCTIONS
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" -- EXPERIMENTS
" ----------------------------------------------------------------------------
" map - dd
" map _ ddk
" imap <c-d> <esc>ddi

" Uppercase the word under cursor in normal mode
nnoremap <leader><c-u> viwU

vnoremap <leader>' <esc>`<i'<esc>`>a'
