set number
set backspace=indent,eol,start
set hlsearch

call plug#begin('~/.vim/nev-plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/syntastic'
call plug#end()

map <C-n> :NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
