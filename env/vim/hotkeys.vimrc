" vim hotkeys

":noremap <F2> :qa!

:noremap <F3> :cs find s <C-R>=expand("<cword>")<CR><CR>
:noremap <F4> :cs find e

":noremap <F5> :!cs update<CR>:cs reset<CR>
:noremap <F5> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR> :!cscope -b -i cscope.files -f cscope.out<CR>:cs reset<CR>
:noremap <C-F5> :source ~/.vimrc<CR>:PlugInstall<CR>:q<CR>
:noremap <F6> :%s/\s\+$//g<CR>
:noremap <C-F6> :%!xxd
:noremap <F8> :TagbarToggle<CR>
:noremap <F9> :if &mouse == 'a' \| set mouse= \| else \| set mouse=a \| endif<CR><CR>
:noremap <F12> :set nu!<CR>

:noremap <C-G> <Esc>:echo expand('%:p')<Return>

":noremap <F2> :cclose
":noremap <F3> :GtagsCursor<CR>
":noremap <F4> :Gtags -g<SPACE>
":noremap <F6> :copen<SPACE>
":noremap <C-n> :cn<CR>
":noremap <C-p> :cp<CR>
":noremap <C-]> :GtagsCursor<CR>

":noremap <F6> :%!xxd
"":noremap <F8> :%!python -m json.tool<CR><CR>

" Tab operations
nmap <C-w>t :tabnew %<CR>
":noremap <c-w>t :tabnew<CR>:o ./<CR>
":noremap <s-t> :tabnew<CR>:o ./<CR>
":noremap <s-x> :tabnex<CR>
":noremap <s-z> :tabprev<CR>
":noremap <c-tab> :tabnex<CR>
":noremap <c-s-tab> :tabprev<CR>

noremap <C-a> :ZoomWin<CR>
noremap <C-p> :FZF<CR>

noremap <silent> <Leader>w :call ToggleWrap()<CR>
function! ToggleWrap()
  if &wrap
    echo "Line Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
    silent! nunmap <buffer> <silent> k gk
    silent! nunmap <buffer> <silent> j gj
    silent! nunmap <buffer> <silent> 0 g0
    silent! nunmap <buffer> <silent> $ g$
  else
    echo "Line Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
    noremap  <buffer> <silent> k gk
    noremap  <buffer> <silent> j gj
    noremap  <buffer> <silent> 0 g0
    noremap  <buffer> <silent> $ g$
  endif
endfunction
