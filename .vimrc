" installed plugins
if has('haiku')
    call plug#begin('~/config/settings/vim/plugged')
else
    call plug#begin('~/.vim/plugged')
endif
Plug 'tpope/vim-vinegar'
Plug 'fsouza/cobol.vim'
Plug 'arzg/vim-colors-xcode'
call plug#end()

" set true-colour
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme xcodedark

if has("autocmd")
    " turn on filetype plugin
    filetype plugin indent on
    " remember last file position
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" enable syntax highlighting
if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

" pretty formatting for tabs and spaces
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

set number          " set line numbers
set relativenumber  " set relative line numbers
set cursorline      " display cursor line
set showcmd         " display entered command
set list            " display tabs and spaces
set autoindent      " use the same indent as previous line
set smartindent     " indent according to language syntax
set smarttab        " insert tabs accordingly with spaces
set expandtab       " converts tabs to spaces
set softtabstop=4   " soft tab stop width
set shiftwidth=4    " shift width
set splitbelow      " open new splits below current buffer
set splitright      " open new splits to the right
set incsearch       " show search matches while typing
set formatoptions+=j    " remove a comment leader when joining lines
set display+=lastline   " display placeholder for truncated text
set autoread        " reflect outside changes to the file
set hidden          " allow buffer change without saving

" highlight search matches
if &t_Co > 2 || has("gui_running")
    set hlsearch
endif

" allow brighter colors without forcing bold
if &t_Co == 8 && $TERM !~# '^Eterm'
    set t_Co=16
endif

" always display 5 lines of text at EOS
if !&scrolloff
    set scrolloff=5
endif

" always display 5 columns of text at EOL
if !&sidescrolloff
    set sidescrolloff=5
endif

if has('mac')
    set keymap=turkish-f
endif

set path=.,/usr/include,,**     " use subfolders as path
set wildmenu                    " allow wildmenu
set wildmode=longest:full,full  " wildmenu mode
set ruler                       " display ruler
set laststatus=2                " always display status line
set statusline=                 " reset status line
set statusline+=[%n]            " buffer number
set statusline+=\ %f            " file name
set statusline+=\ %m            " 'modified' toggle
set statusline+=%=              " flexible space
set statusline+=%#CursorColumn# " empty column
set statusline+=\ %y            " file type, below encoding and format
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %p%%          " file read percentage
set statusline+=\ %l:%c         " cursor line and column

" netrw configuration
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25

" next/previous buffer
map <F2> :bprev<CR>
map <F3> :bnext<CR>

" insert date
inoremap <F4> <C-R>=strftime("%d/%m/%y")<CR>

" insert date and time
inoremap <F5> <C-R>=strftime("%d/%m/%y %H:%M:%S")<CR>

" add brackets, curly braces etc...
map \p i(<Esc>ea)<Esc>
map \h i{<Esc>ea}<Esc>
map \n i[<Esc>ea]<Esc>

" C compiler
map <S-F12> : !cc % && ./a.out <CR>
