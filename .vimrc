call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'fsouza/cobol.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'romainl/vim-dichromatic'
Plug 'plasticboy/vim-markdown'
call plug#end()

syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set t_Co=256

syntax enable
set background=dark
colorscheme solarized

" Lightline color scheme
let g:lightline = {
            \'colorscheme': 'jellybeans',
            \}
" Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" C Compiler
map <F12> : !cc % && ./a.out <CR>
