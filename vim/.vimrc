
"--------------------- General ---------------------"

" keymaps
" Enables toggling bulgarian language
" more:
" http://stackoverflow.com/questions/3776728/using-vim-with-the-greek-language
set keymap=bulgarian-phonetic
set iminsert=0
set imsearch=0

" We want the latest vim settings
set nocompatible

" Enable line numbers and relative line numbers
set number
set relativenumber

" Prevents delay on Shift-O and other key-combinations
set noesckeys

" Enable swap files and change the 
" default swap files dir
set swapfile
set dir=~/tmp

" Tabs and spaces
filetype plugin indent on
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

" Indentation
set smartindent
set autoindent

" All the Vundle stuff is in there
so ~/.vim/plugins.vim

" Powerline fonts settings
let g:airline_powerline_fonts = 1

" Always show the status bar on the bottom
set laststatus=2

" Underline the current line
set cursorline

" HTML Editing
set matchpairs+=<:>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Set automatic autocomplete for php files
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Autocompletion the right way
let g:SuperTabDefaultCompletionType = "<c-n>"

"Better line wrapping 
set wrap
set textwidth=79

" Show matching brackets
set showmatch

" Enable mouse mouse usage
set mouse=a

" Spell checking on
set spell

" Autofold
set foldenable

"--------------------- Let's -----------------------"

" The default leader is \,
" but `,` is much better
let mapleader = ','

" Ultisnips
" -
" Expand on tab
" Ctrl-Space
let g:UltiSnipsExpandTrigger="<c-@>"
" Move to the next placeholder on tab
let g:UltiSnipsJumpForwardTrigger="<c-@>"
" Move to the prev placeholder on Shift-tab
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Vim-multiple-cursors
" -
" Find next occurance
let g:multi_cursor_next_key='<C-d>'

" PHP Documentor for vim (PDV)
" -
"  Template dir (used for the docblock template - requires UltiSnips)
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>

"-------------------- Mappings ---------------------"
" source .vimrc file
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Open the .vimrc file
nmap <Leader>ev :tabnew $MYVIMRC<cr>

" Quit
nmap <Leader>q :q<cr>

" Force save and quit
nmap <Leader>qq :q!<cr>

" Close the current buffer
nmap <Leader>b :bd<cr>

" Close the current buffer
nmap <Leader>bb :bd!<cr>

" Save
nmap <Leader>w :w<cr>

" Save and quit
nmap <Leader>wq :wq<cr>

" Open the plugins file (Vundle)
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>

" Open/Close the NERDTree
nmap <Leader>1 :NERDTreeToggle<cr>

" After a search, remove the highlighting
nmap <Leader><space> :nohlsearch<cr>

" Go four lines down
nmap <Leader>a 4j

" Go fourl lines up
nmap <Leader>s 4k

" Update ctags
nmap <Leader>t :!ctags -R<cr>

" See methods and variables within a file
" nmap <c-R> :CtrlPBufTag<cr>

" See the most recently used files
nmap <c-E> :CtrlPMRUFiles<cr>

" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"--------------------- Colors ----------------------"

" Enforce <t_CO> colors for terminal vim
set t_CO=256

" Background dark
set background=dark

" Enable syntax highlighting
syntax enable

" Set the colorscheme
" colorscheme Tomorrow-Night-Eighties
" colorscheme base
" colorscheme brogrammer
colorscheme atom-dark-256

" Set the background for the line numbers the same as the editor's bg
" Usualy set to `bg`
hi LineNr ctermbg=bg                                

" Background for the veritical split separator
" Usualy set to `bg`
hi vertsplit ctermbg=bg ctermfg=bg                  

hi TabLineFill ctermfg=bg ctermbg=bg
hi TabLine ctermfg=Yellow ctermbg=bg
hi TabLineSel ctermfg=bg ctermbg=Yellow

"---------------- Split Management -----------------"

" Go to the split below (Ctrl-Shift-j)
nmap sjj <C-W><C-J><cr>					            

" Go to the split above (Ctrl-Shift-k)
nmap skk <C-W><C-K><cr>					            

" Go to the split on the left (Ctrl-Shift-h)
nmap shh <C-W><C-H><cr>					            

" Go to the split on the right (Ctrl-Shift-l)
nmap sll <C-W><C-L><cr>					            

"---------------- Tabs Management ------------------"

nmap <C-N> :tabnew<cr>

" Go to the next tab
nmap <C-L> :tabn<cr>					            

" Go to the prev tab
nmap <C-H> :tabp<cr>					            

"-------------------- Searching --------------------"

" Highlight all found words on search
set hlsearch						                

" Incremental search (search as you type, boy)
set incsearch						                

" case insensitive search
set ignorecase
set smartcase

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>"]"]

"------------------ Auto Commands ------------------"

" Allows automatically including use statements for PHP files
function! IPhpInsertUse()
        call PhpInsertUse()
            call feedkeys('a',  'n')
        endfunction
        autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
        autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

"-------------------- Copy-Paste --------------------"
" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> " F2 before pasting to preserve indentation
" Copy paste to/from clipboard
vnoremap <Leader>c "*y
map <Leader>v :set paste<CR>o<esc>"*]p:set nopaste<cr>"

" =======
" PLUGINS
" =======

"
"

" Some usefull hints.
" ===================
" nmap - Maps a key for normal mode
" imap - Maps a key for insert mode
" vmap - Maps a key for visual mode
" map - Maps a key for each mode
" <cr> - `hit enter, bro`
" zz - Bring the line the cursor is in the middle of the screen 
" Ctrl-w-Shift-\ - Expand the split
" Ctrl-w-= - Equal size splits
" Ctrl-] - Go to the method definition
" Ctrl-^ - Go back from the method definition
" r - Replace the selected
" yg_ - Yank to the end of the line
" gcc - Toggle comment a line
" gc - Toggle comment on a region
" 
" Notes
" =====
" To enable 256 colors
" 1. Add this to the bashrc file
" 	TERM=xterm-256color
" 2. Add this to the .vimrc file
" 	set t_CO=256
" 3. Done
