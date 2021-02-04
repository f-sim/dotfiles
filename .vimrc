" Install plugins
call plug#begin('$HOME/.local/share/nvim-plugins')

Plug 'preservim/nerdtree'

Plug 'overcache/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'skanehira/docker.vim'

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

