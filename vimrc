"pathogen stuff
call pathogen#infect()
call pathogen#helptags()

"my shortcuts
set pastetoggle=<F3>
nmap <C-F1> "+y
nmap <F2> ggVG"+y
nmap <F4> :vsplit<CR>
nmap <F5> V"+y
nmap <C-s> :w<CR>
command Wq wq
command WQ wq
command W w
command Q q

"ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-l>'

"netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0


"flake8
autocmd FileType python map <buffer> <F8> :call flake8()<CR>

"localvimrc
"https://github.com/embear/vim-localvimrc
let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0

"tips
"%% shows current buffer path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
autocmd BufWritePre * :%s/\s\+$//e

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set mouse=a
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType jinja2 setlocal syntax=html
colorscheme atomified

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
