" Install plugins
call plug#begin('$HOME/.local/share/nvim-plugins')

Plug 'preservim/nerdtree'

Plug 'overcache/NeoSolarized'

call plug#end()

" General configuration
set number
set termguicolors
set background=dark
colorscheme NeoSolarized
filetype plugin indent on

