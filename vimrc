call plug#begin('~/.vim/plugged')

                                                " The list of plugins.
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-commentary'

call plug#end()

set showmatch                                   " highlight matching
set incsearch                                   " search as characters are entered
set hlsearch                                    " highlight matches

:syntax on

let mapleader=","

set spelllang=en_us                             " spell checking
set encoding=utf-8 nobomb

function! savesession()

    tabdo NERDTreeClose
    mksession! .savemysession.vim
    qall!

endfunction                                    " save session(very useful)

nnoremap ; :                                    " no need to press shift when we want to get into command mode.
vnoremap ; :                                    " no need to press shift when we want to get into command mode.

nnoremap <leader>/ <Plug>CommentaryLine         " Map the key for toggling comments
nnoremap <leader>h :help<CR>                    " show help
nnoremap <leader>c :qa!<CR>                     " quit easily out of vim
nnoremap <leader>o :options<CR>                 " show options
nnoremap <leader>m :colorscheme jellybeans<CR>  " change theme
nnoremap <leader>i :PlugInstall<CR>             " Install plugs
nnoremap <leader>n :NERDTree<Space>             " Nerdtree shortcut
nnoremap <leader>p : set paste<CR>
nnoremap <leader>| :syntax off<CR>
nnoremap <leader>\ :syntax on<CR>

xmap ga <Plug>(EasyAlign)                       " Start interactive EasyAlign in visual mode

nmap ga <Plug>(EasyAlign)                       " Start interactive EasyAlign for a motion/text object

