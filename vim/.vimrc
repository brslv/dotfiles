" *** Information *** {{{

    " ===================================
    " Author: 	        Borislav Grigorov
    " Last Change: 	10.11.16
    " ===================================
    
" }}}

" *** Notes *** {{{

    " = Shortcuts and hotkeys
    " * za - toggle fold

" }}}

" *** Inbox *** {{{

    " = Stuff, that should be tidied up later. 
    " = Used for settings i'm currently trying out

" }}}

" *** General *** {{{

    " Use vim settings, rather than vi settings. This must be first!
    set nocompatible

    " Make backspace behave in a sane manner.
    set backspace=indent,eol,start

    " The default leader is \, but `,` is much better.
    let mapleader = ','

    " Prevents delay on Shift-O and other key-combinations.
    set noesckeys

    " Change the default swap files directory.
    set swapfile
    set dir=~/tmp

    " Always show the status bar on the bottom.
    set laststatus=2

    " Underline the current line.
    set cursorline

    " Show matching brackets.
    set showmatch

    " Autofold.
    set foldenable

    " Powerline fonts settings
    let g:airline_powerline_fonts = 1

    " Colors {{{
        " Enforce <t_CO> colors for terminal vim.
        set t_CO=256

        " Switch syntax highlighting on
        syntax on

        " Set the colorscheme
        " colorscheme gotham256
        " colorscheme CandyPaper
        " colorscheme OceanicNext   " Nice
        colorscheme antares         " Uber nice
    " }}}

    " Indentation {{{
        " Enable file type detection and do language-dependent indenting.
        filetype plugin indent on

        set tabstop=8
        set expandtab
        set softtabstop=4
        set shiftwidth=4

        set smartindent
        set autoindent
    " }}}

    " Line numbering {{{
        " Enable line numbers.
        set number

        " Enable relative line numbers (pretty useful).
        set relativenumber
    " }}}

    " Searching settings {{{
        " Highlight all found words on search
        set hlsearch						                

        " Incremental search (search as you type, boy)
        set incsearch						                

        " Activate case insensitive search
        set ignorecase
        set smartcase
    " }}}

" }}}

" *** Mappings *** {{{

    " Remap the escape key to `kj` key-combination.
    imap kj <esc>

    " Never enter Ex mode.
    nnoremap Q <nop>

    " source .vimrc file.
    :nnoremap <leader>sv :source $MYVIMRC<cr>

    " Open the .vimrc file.
    nmap <Leader>ev :tabnew $MYVIMRC<cr>

    " Quit.
    nmap <Leader>q :q<cr>

    " Force quit.
    nmap <Leader>qq :q!<cr>

    " Save.
    nmap <Leader>w :w<cr>

    " Save and quit.
    nmap <Leader>wq :wq<cr>

    " Update ctags.
    nmap <Leader>t :!ctags -R<cr>

    " After a search, remove the highlighting.
    nmap <Leader><space> :nohlsearch<cr>


    " Moving {{{
        " Go four lines down with Ctrl-j.
        nnoremap <c-j> 4j

        " Go four lines up with Ctrl-k.
        nnoremap <c-k> 4k
    " }}}

    " Split management {{{
        " Go to the split below (Ctrl-Shift-j).
        nmap sjj <C-W><C-J><cr>					            

        " Go to the split above (Ctrl-Shift-k).
        nmap skk <C-W><C-K><cr>					            

        " Go to the split on the left (Ctrl-Shift-h).
        nmap shh <C-W><C-H><cr>					            

        " Go to the split on the right (Ctrl-Shift-l).
        nmap sll <C-W><C-L><cr>					            
    " }}}

    " Tabs management {{{
        nmap <C-N> :tabnew<cr>

        " Go to the next tab
        nmap <C-L> :tabn<cr>					            

        " Go to the prev tab
        nmap <C-H> :tabp<cr>					            
    " }}}

" }}}

" *** Autocmds *** {{{

    au FileType ruby setlocal sw=2 sts=2

" }}}

" *** Plugins *** {{{

set rtp+=~/.vim/bundle/Vundle.vim 		" set the runtime path to include Vundle and initialize

    call vundle#begin()

    " Active {{{
        " Vundle.
        Plugin 'VundleVim/Vundle.vim'

        " NERDTree.
        Plugin 'scrooloose/nerdtree'

        " Ctrl-p.
        Plugin 'kien/ctrlp.vim'

        " Vim-airline themes.
        Plugin 'vim-airline/vim-airline-themes'

        " Ag searching.
        Plugin 'rking/ag.vim'

        " Updated PHP syntax.
        Plugin 'StanAngeloff/php.vim'

        " Vim-surround.
        Plugin 'tpope/vim-surround'

        " TComment.
        Plugin 'tomtom/tcomment_vim'

        " Syntastic.
        Plugin 'scrooloose/syntastic'

        " Gitgutter.
        Plugin 'airblade/vim-gitgutter'

        " Tagbar.
        Plugin 'majutsushi/tagbar'

        " Fot better js.
        Plugin 'pangloss/vim-javascript'

        " Colorschemes collection.
        Plugin 'flazz/vim-colorschemes'
    " }}}
    
    " Disabled for now {{{
        " Plugin 'jiangmiao/auto-pairs'
        " Plugin 'SirVer/ultisnips'                       " UltiSnips
        " Plugin 'arnaud-lb/vim-php-namespace'            " PHP namespaces usings
        " Plugin 'honza/vim-snippets'                     " Some handy snippets
        " Plugin 'tommcdo/vim-exchange'                   " Vim-exchange for words swapping
        " Plugin 'Shougo/neocomplete'                     " Neocomplete
        " Plugin 'easymotion/vim-easymotion'              " Easy motion
        " Plugin 'morhetz/gruvbox'                        " Gruvbox colorscheme
    " }}}

    call vundle#end()            			" required

" }}}

" *** Plugins settings & mappings *** {{{

    " Nerdtree {{{
        " Open/Close the NERDTree.
        nmap <Leader>1 :NERDTreeToggle<cr>
    "}}}
    
    " Tagbar {{{
        nmap <Leader>2 :TagbarToggle<CR>
    " }}}

" }}}
