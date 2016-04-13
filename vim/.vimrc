" Some usefull hints.
" ===================
" nmap 							- Maps a key for normal mode
" imap 							- Maps a key for insert mode
" map 							- Maps a key for each mode
" <cr> 							- `hit enter, bro`
" zz 							- Bring the line the cursor is in the middle of the screen 
" Ctrl-w-Shift-\					- Expand the split
" Ctrl-w-= 						- Equal size splits
" 
" -------------------------------
" -------------------------------
" > To enable 256 colors <
" 1. Add this to the bashrc file
" 	TERM=xterm-256color
" 2. Add this to the .vimrc file
" 	set t_CO=256
" 3. Done
" -------------------------------
" -------------------------------
" ====================

"--------------------- General --------------------"

set nocompatible					" We want the latest vim settings/options
set number						" Enable line numbers

so ~/.vim/plugins.vim					" All the Vundle stuff is in there

"--------------------- Let's ----------------------"

let mapleader = ','					" The default leader is \, but `,` is much better

"-------------------- Mappings --------------------"

nmap <Leader>ev :tabnew $MYVIMRC<cr>			" Open the .vimrc file

nmap <Leader>q :q<cr>					" Quit
nmap <Leader>qq :q!<cr>					" Force save and quit
nmap <Leader>w :w<cr>					" Save
nmap <Leader>wq :wq<cr>					" Save and quit

nmap <Leader>ep :e ~/.vim/plugins.vim<cr>		" Open the plugins file (Vundle)

nmap <Leader>1 :NERDTreeToggle<cr>			" Open/Close the NERDTree

nmap <Leader><space> :nohlsearch<cr>			" After a search, remove the highlighting
 
"--------------------- Colors ---------------------"

set t_CO=256  						" Enforce 256 colors for terminal vim
syntax enable 						" Enable syntax highlighting
colorscheme tayra	 				" Set the colorscheme

"---------------- Split Management -----------------"

nmap <C-J> <C-W><C-J>					" Go to the split below
nmap <C-K> <C-W><C-K>					" Go to the split above
nmap <C-H> <C-W><C-H>					" Go to the split on the left
nmap <C-L> <C-W><C-L>					" Go to the split on the right

"---------------- Tabs Management ------------------"

" @TODO: map :tabn
" @TODO: map :tabp

"-------------------- Searching --------------------"

set hlsearch						" Highlight all found words on search
set incsearch						" Incremental search (search as you type, boy)
