syntax on

set guicursor=
set ic!
set smartcase
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set mouse=a

"set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe', { 'commit':'d98f896' }

call plug#end()

colorscheme gruvbox
set background=dark

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

map <F2> :NERDTreeToggle<CR>
map <C-h> 0
map <C-j> 5j
map <C-k> 5k
map <C-l> $
