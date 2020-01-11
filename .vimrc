" Installed plugins
if has('haiku')
    call plug#begin('~/config/settings/vim/plugged')
else
    call plug#begin('~/.vim/plugged')
endif
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tmux-plugins/vim-tmux'
Plug 'fsouza/cobol.vim'
Plug 'itchyny/lightline.vim'
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

" Remember last file position
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Netrw list style
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25

" Xcode colors
colorscheme xcodedark

" Lightline color scheme
let g:lightline = {
            \'colorscheme': 'jellybeans',
            \}

" C compiler
map <F12> : !cc % && ./a.out <CR>
