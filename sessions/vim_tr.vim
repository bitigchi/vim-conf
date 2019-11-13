let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit Projeler/GitHub/vim/src/po/tr.po
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 136 + 136) / 272)
exe '2resize ' . ((&lines * 30 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 135 + 136) / 272)
exe '3resize ' . ((&lines * 28 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 135 + 136) / 272)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 02|
lcd ~/Projeler/GitHub/vim/src/po
wincmd w
argglobal
if bufexists("~/Projeler/GitHub/vim/src/po/ru.po") | buffer ~/Projeler/GitHub/vim/src/po/ru.po | else | edit ~/Projeler/GitHub/vim/src/po/ru.po | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projeler/GitHub/vim/src/po
wincmd w
argglobal
if bufexists("~/Desktop/sözlük.md") | buffer ~/Desktop/sözlük.md | else | edit ~/Desktop/sözlük.md | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/Projeler/GitHub/vim/src/po
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 136 + 136) / 272)
exe '2resize ' . ((&lines * 30 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 135 + 136) / 272)
exe '3resize ' . ((&lines * 28 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 135 + 136) / 272)
tabnext 1
badd +1 ~/Projeler/GitHub/vim/src/po/tr.po
badd +1 ~/Projeler/GitHub/vim/src/po/ru.po
badd +1 ~/Desktop/sözlük.md
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSI
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
