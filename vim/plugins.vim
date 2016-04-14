filetype off                  					" required

set rtp+=~/.vim/bundle/Vundle.vim 				" set the runtime path to include Vundle and initialize
call vundle#begin()



Plugin 'VundleVim/Vundle.vim' 					" Vundle
Plugin 'scrooloose/nerdtree' 					" NERDTree
Plugin 'jiangmiao/auto-pairs' 					" Auto Pairs
Plugin 'kien/ctrlp.vim'						" Ctrl-P
Plugin 'vim-airline/vim-airline'				" Vim-airline
Plugin 'vim-airline/vim-airline-themes'				" Vim-airline themes
Plugin 'rking/ag.vim'                           " Ag searching



call vundle#end()            					" required
filetype plugin indent on    					" required
