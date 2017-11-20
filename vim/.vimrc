" information *** {{{

    " ===================================
    " Author: 	        Borislav Grigorov
    " Last Change: 	20.11.2017
    " ===================================
    
" }}}

" *** Notes *** {{{

    " = Shortcuts and hotkeys
    " * za - toggle fold

" }}}

" *** Inbox *** {{{

    " = Stuff, that should be tidied up later. 
    " = Used for settings i'm currently trying out
    " set statusline=%l/%L

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
    
    " Set the status bar format
    set statusline=[%t]%m%=%l/%L

    " Underline the current line.
    set cursorline

    " Show matching brackets.
    set showmatch

    " Powerline fonts settings
    let g:airline_powerline_fonts = 1

    " Scroll with mouse
    set mouse=a

    " UI helper for status autocompletion
    set wildmenu
    set wildmode=longest:full,full

    " Scroll size
    let scroll = 10

    " Folds {{{
        " Autofold.
        set foldenable

        " Open most folds by default
        set foldlevelstart=10
        set foldnestmax=10

        " space open/closes folds
        nnoremap <space> za

        " Fold, based on indent level
        set foldmethod=indent
    " }}}

    " Colors {{{
        " Enforce <t_CO> colors for terminal vim.
        set t_Co=256

        " Switch syntax highlighting on
        syntax on

        " Set the background color to dark
        set background=dark

        " Set the colorscheme
        " colorscheme molokai
        " colorscheme desertEx
        " colorscheme CandyPaper
        " colorscheme OceanicNext
        " colorscheme antares
        " colorscheme bubblegum-256-dark
        " colorscheme zenburn
        " colorscheme tender
        " colorscheme PaperColor
        " colorscheme wombat256i
        " colorscheme lucid
        colorscheme pixelmuerto
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

    " Omni-completion {{{
        " If you prefer the Omni-Completion tip window to close when a selection is
        " made, these lines close it on movement in insert mode or when leaving
        " insert mode
        " set omnifunc=syntaxcomplete#Complete
        autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
        autocmd InsertLeave * if pumvisible() == 0|pclose|endif
    " }}}

" }}}

" *** Plugins *** {{{

    set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize

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
        Plugin 'nathanaelkane/vim-indent-guides'

        " Colorschemes collection.
        Plugin 'flazz/vim-colorschemes'

        " UltiSnips
        Plugin 'SirVer/ultisnips'

        " Neocomplete
        Plugin 'Shougo/neocomplete'

        " Autoclose html tags
        Plugin 'alvan/vim-closetag'

        " Some handy vim snippets
        Plugin 'honza/vim-snippets'

        " JSX syntax and indentation
        Plugin 'maxmellon/vim-jsx-pretty'

        " Goyo - distraction free
        Plugin 'junegunn/goyo.vim'

        " Limelight
        Plugin 'junegunn/limelight.vim'

        " Ack
        Plugin 'mileszs/ack.vim'

        " Vim-stylus
        Plugin 'wavded/vim-stylus.git'

        " space-vim-dark colorscheme
        Plugin 'liuchengxu/space-vim-dark'
    " }}}
    
    " Disabled for now {{{
        " Plugin 'SirVer/ultisnips'                       " UltiSnips
        " Plugin 'arnaud-lb/vim-php-namespace'            " PHP namespaces usings
        " Plugin 'tommcdo/vim-exchange'                   " Vim-exchange for words swapping
        " Plugin 'Shougo/neocomplete'                     " Neocomplete
        " Plugin 'easymotion/vim-easymotion'              " Easy motion
        " Plugin 'morhetz/gruvbox'                        " Gruvbox colorscheme
    " }}}

    call vundle#end()            			" required

" }}}

" *** Plugins settings & mappings *** {{{

    " Limelight {{{
        autocmd! User GoyoEnter Limelight
        autocmd! User GoyoLeave Limelight!
    " }}}

    " Nerdtree {{{
        " Automatically open NERDTree and focus on the editor
        " autocmd VimEnter * NERDTree
        " autocmd VimEnter * wincmd p

        " NERDTress File highlighting
        function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
            exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
            exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
        endfunction

        call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
        call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
        call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
        call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
        call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
        call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
        call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

        " Open/Close the NERDTree.
        nmap <Leader>1 :NERDTreeToggle<cr>
        let g:NERDTreeMouseMode = 3
    "}}}
    
    " Tagbar {{{
        nmap <Leader>2 :TagbarToggle<CR>
    " }}}

    " Ultisnips {{{
        " Expand on tab
        " Ctrl-Space
        let g:UltiSnipsExpandTrigger="<c-@>"
        " Move to the next placeholder on tab
        let g:UltiSnipsJumpForwardTrigger="<c-@>"
        " Move to the prev placeholder on Shift-tab
        let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
    " }}}

    " Neocomplete {{{
        " Set minimum syntax keyword length.
        let g:neocomplete#enable_at_startup = 1
        let g:neocomplete#sources#syntax#min_keyword_length = 3
        let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

        " TAB completion
        inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    " }}}
    
    " CtrlP {{{
        nmap <c-e> :CtrlPMRUFiles<cr>
        let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
    " }}}

    " Vim closetag {{{
        let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.html.erb,*.erb"
    " }}}

" }}}

" *** Mappings *** {{{

    " Remap the escape key to `kj` key-combination.
    imap kj <esc>

    " Never enter Ex mode.
    nnoremap Q <nop>

    " source .vimrc file.
    nnoremap <leader>sv :source $MYVIMRC<cr>

    " Open the .vimrc file.
    nmap <Leader>ev :tabnew $MYVIMRC<cr>
    
    " Open the notes file.
    nmap <Leader>n :tabnew ~/notes.txt<cr>

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

        " Go to the beginning of the line (H).
        nnoremap <S-h> ^

        " Go to the end of the line (L).
        nnoremap <S-l> $
    " }}}

    " Tabs management {{{
        nmap <C-N> :tabnew<cr>

        " Go to the next tab
        nmap <C-L> :tabn<cr>					            

        " Go to the prev tab
        nmap <C-H> :tabp<cr>					            
    " }}}

    " Copy-pasting to clipboard {{{
        " Paste
        nnoremap <Leader><C-v> "+p
        " Copy
        nnoremap <Leader><C-c> "+y
    " }}}

    " Searching with Ag {{{
        " Perform a new Ag search in a new tab.
        nmap <Leader>a :tab split<CR>:Ag -Q ""<left>
    " }}}

" }}}

" *** Autocmds *** {{{

    " Source the .vimrc file on change
    autocmd! BufWritePost .vimrc source %

" }}}

