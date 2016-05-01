filetype off                  			" required

set rtp+=~/.vim/bundle/Vundle.vim 		" set the runtime path to include Vundle and initialize
call vundle#begin()



Plugin 'VundleVim/Vundle.vim' 			" Vundle
Plugin 'scrooloose/nerdtree' 			" NERDTree
Plugin 'jiangmiao/auto-pairs' 			" Auto Pairs
Plugin 'kien/ctrlp.vim'			        " Ctrl-P
Plugin 'vim-airline/vim-airline'		" Vim-airline
Plugin 'vim-airline/vim-airline-themes'		" Vim-airline themes
Plugin 'rking/ag.vim'                           " Ag searching
Plugin 'SirVer/ultisnips'                       " UltiSnips
Plugin 'ervandew/supertab'                      " Supertab
Plugin 'StanAngeloff/php.vim'                   " Updated PHP Syntax
Plugin 'arnaud-lb/vim-php-namespace'            " PHP namespaces usings
Plugin 'terryma/vim-multiple-cursors'           " Multiple cursors
Plugin 'tpope/vim-surround'                     " Vim-surround
Plugin 'tobyS/vmustache'                        " --Dependency for `PHP Documentor for vim`
Plugin 'tobyS/pdv'                              " PHP Documentor for vim
Plugin 'shawncplus/phpcomplete.vim'             " phpcomplete
Plugin 'vim-scripts/AutoComplPop'               " AutoComplPop
" Plugin 'Valloric/YouCompleteMe'                 " YouCompleteMe


call vundle#end()            			" required
filetype plugin indent on    			" required
