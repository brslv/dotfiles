" Some usefull hints.
" ===================
" nmap 							- maps a key for normal mode
" imap 							- maps a key for insert mode
" map 							- maps a key for each mode
" <cr> 							- `hit enter, bro`
" zz 							- bring the line the cursor is in the middle of the screen 
" ====================


"--------------------- Let's ----------------------"

let mapleader = ','					" The default leader is \, but `,` is much better

"-------------------- Mappings --------------------"

nmap <Leader>ev :tabnew $MYVIMRC<cr>			" Open the .vimrc file

nmap <Leader>q :q<cr>					" Quit
nmap <Leader>qq :q!<cr>					" Force save and quit
nmap <Leader>w :w<cr>					" Save
nmap <Leader>wq :wq<cr>					" Save and quit

nmap <Leader><space> :nohlsearch<cr>			" After a search, remove the highlighting
 
"--------------------- Colors ---------------------"

set t_CO=256  						" Enforce 256 colors for terminal vim
syntax enable 						" Enable syntax highlighting
colorscheme atom-dark-256 				" Set the colorscheme

"-------------------- Searching --------------------"

set hlsearch						" Highlight all found words on search
set incsearch						" Incremental search (search as you type, boy)

"--------------------- General --------------------"

set number						" Enable line numbers

