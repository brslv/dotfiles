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

set nocompatible					                " We want the latest vim settings/options
set number						                    " Enable line numbers
set swapfile						                " Enable swap files
set dir=~/tmp

" Tabs and spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

so ~/.vim/plugins.vim					            " All the Vundle stuff is in there

let g:airline_powerline_fonts = 1			        " Powerline fonts setting

"--------------------- Let's -----------------------"

let mapleader = ','					                " The default leader is \, but `,` is much better
let g:UltiSnipsExpandTrigger="<tab>"                " Expand on tab                                          
let g:UltiSnipsJumpForwardTrigger="<tab>"           " Move to the next placeholder on tab                           
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"        " Move to the prev placeholder on Shift-tab

"-------------------- Mappings ---------------------"

nmap <Leader>ev :tabnew $MYVIMRC<cr>			    " Open the .vimrc file

nmap <Leader>q :q<cr>					            " Quit
nmap <Leader>qq :q!<cr>					            " Force save and quit
nmap <Leader>w :w<cr>					            " Save
nmap <Leader>wq :wq<cr>					            " Save and quit

nmap <Leader>ep :e ~/.vim/plugins.vim<cr>		    " Open the plugins file (Vundle)

nmap <Leader>1 :NERDTreeToggle<cr>			        " Open/Close the NERDTree

nmap <Leader><space> :nohlsearch<cr>			    " After a search, remove the highlighting

nmap <Leader>a 4j					                " Go four lines down
nmap <Leader>s 4k					                " Go four lines up

                                                    " See methods and variables within a file
nmap <c-R> :CtrlPBufTag<cr>
                                                    " See the most recently used files
nmap <c-E> :CtrlPMRUFiles<cr>
 
"--------------------- Colors ----------------------"

set t_CO=256  						                " Enforce 256 colors for terminal vim
set background=dark					                " Background dark
syntax enable 						                " Enable syntax highlighting
" colorscheme Tomorrow-Night-Eighties	 			" Set the colorscheme
colorscheme Tomorrow-Night-Eighties

hi LineNr ctermbg=bg                                " Set the background for the line numbers the same as the editor's bg
hi vertsplit ctermbg=bg ctermfg=bg                  " Background for the veritical split separator

"---------------- Split Management -----------------"

nmap sjj <C-W><C-J><cr>					            " Go to the split below (Ctrl-Shift-j)
nmap skk <C-W><C-K><cr>					            " Go to the split above (Ctrl-Shift-k)
nmap shh <C-W><C-H><cr>					            " Go to the split on the left (Ctrl-Shift-h)
nmap sll <C-W><C-L><cr>					            " Go to the split on the right (Ctrl-Shift-l)

"---------------- Tabs Management ------------------"

nmap <C-N> :tabnew<cr>
nmap <C-L> :tabn<cr>					            " Go to the next tab
nmap <C-H> :tabp<cr>					            " Go to the prev tab

"-------------------- Searching --------------------"

set hlsearch						                " Highlight all found words on search
set incsearch						                " Incremental search (search as you type, boy)
