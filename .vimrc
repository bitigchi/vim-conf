call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tmux-plugins/vim-tmux'
Plug 'fsouza/cobol.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'romainl/vim-dichromatic'
Plug 'plasticboy/vim-markdown'
Plug 'danilo-augusto/vim-afterglow'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

syntax on
syntax enable

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set t_Co=256
set background=dark
set encoding=utf-8

" Afterglow
let g:afterglow_inherit_background=1
colorscheme afterglow

" Lightline color scheme
let g:lightline = {
            \'colorscheme': 'jellybeans',
            \}
" Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>
" C Compiler
map <F12> : !cc % && ./a.out <CR>
