" Install plugins
call plug#begin('$HOME/.local/share/nvim-plugins')

Plug 'preservim/nerdtree'

Plug 'overcache/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'skanehira/docker-compose.vim'

call plug#end()

" General configuration
set number
set termguicolors
set background=dark
colorscheme NeoSolarized
filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>
imap jj <ESC>l

" Do not show stupid q: window
map q: :q

let g:airline_theme='solarized'

nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

