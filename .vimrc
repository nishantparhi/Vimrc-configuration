call plug#begin('~/.vim/plugged')

" The list of plugins.

Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'flazz/vim-colorschemes'

call plug#end()

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-h> :help<CR>
nnoremap <C-c> :qa!<CR>
nnoremap <C-o> :options<CR>
nnoremap <C-m> :colorscheme jellybeans<CR>
nnoremap <C-p> :PlugInstall<CR>
