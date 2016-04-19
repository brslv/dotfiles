" Some usefull hints.
" ===================
" nmap 							                    - Maps a key for normal mode
" imap 							                    - Maps a key for insert mode
" map 							                    - Maps a key for each mode
" <cr> 							                    - `hit enter, bro`
" zz 							                    - Bring the line the cursor is in the middle of the screen 
" Ctrl-w-Shift-\					                - Expand the split
" Ctrl-w-= 						                    - Equal size splits
" Ctrl-]						                    - Go to the method
" definition
" Ctrl-^						                    - Go back from the method definition
" r                                                 - Replace the selected
" symbol
" 
" Notes
" =====
" To enable 256 colors
" 1. Add this to the bashrc file
" 	TERM=xterm-256color
" 2. Add this to the .vimrc file
" 	set t_CO=256
" 3. Done

"--------------------- General ---------------------"

" We want the latest vim settings
set nocompatible

" Enable line numbers and relative line numbers
set number
set relativenumber

" Enable swap files and change the 
" default swap files dir
set swapfile
set dir=~/tmp

" Tabs and spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" All the Vundle stuff is in there
so ~/.vim/plugins.vim

" Powerline fonts settings
let g:airline_powerline_fonts = 1

"--------------------- Let's -----------------------"

" The default leader is \,
" but `,` is much better
let mapleader = ','

" Ultisnips
" -
" Expand on tab
let g:UltiSnipsExpandTrigger="<tab>"
" Move to the next placeholder on tab
let g:UltiSnipsJumpForwardTrigger="<tab>"
" Move to the prev placeholder on Shift-tab
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"-------------------- Mappings ---------------------"

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

" See methods and variables within a file
nmap <c-R> :CtrlPBufTag<cr>

" See the most recently used files
nmap <c-E> :CtrlPMRUFiles<cr>
 
"--------------------- Colors ----------------------"

" Enforce <t_CO> colors for terminal vim
set t_CO=256

" Background dark
set background=dark

" Enable syntax highlighting
syntax enable

" Set the colorscheme
colorscheme Tomorrow-Night-Eighties

" Set the background for the line numbers the same as the editor's bg
hi LineNr ctermbg=bg                                

" Background for the veritical split separator
hi vertsplit ctermbg=bg ctermfg=bg                  

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

"------------------ Auto Commands ------------------"

" Allows automatically including use statements for PHP files
function! IPhpInsertUse()
        call PhpInsertUse()
            call feedkeys('a',  'n')
        endfunction
        autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
        autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
