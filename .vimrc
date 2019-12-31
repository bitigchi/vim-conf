" Installed plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tmux-plugins/vim-tmux'
Plug 'fsouza/cobol.vim'
Plug 'itchyny/lightline.vim'
Plug 'plasticboy/vim-markdown'
Plug 'danilo-augusto/vim-afterglow'
Plug 'christoomey/vim-tmux-navigator'
Plug 'arzg/vim-colors-xcode'
call plug#end()

" Common settings
syntax on
syntax enable

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set t_Co=256
set background=dark
set path=.,/usr/include,,**

" Netrw list style
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25

" Xcode colors
colorscheme xcodedark

" Afterglow
" let g:afterglow_inherit_background=1
" colorscheme afterglow

" Lightline color scheme
let g:lightline = {
            \'colorscheme': 'jellybeans',
            \}

" C compiler
map <F12> : !cc % && ./a.out <CR>
