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
Plug 'christoomey/vim-tmux-navigator'
Plug 'arzg/vim-colors-xcode'
call plug#end()

if &t_Co > 1
	syntax enable
endif

colorscheme xcodedark

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent

set number
set t_Co=256
set splitbelow
set splitright
set cursorline
set wildmode=longest:full,full
set path=.,/usr/include,,**
set showcmd
set list

" Highlight search matches
if &t_Co > 2 || has("gui_running")
	set hlsearch
endif

" Remember last file position
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25

set statusline=
set statusline+=[%n]
set statusline+=\ %f
set statusline+=\ %m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c

" Add brackets, curly braces etc...
map \p i(<Esc>ea)<Esc>
map \h i{<Esc>ea}<Esc>
map \n i[<Esc>ea]<Esc>

" C compiler
map <S-F12> : !cc % && ./a.out <CR>
