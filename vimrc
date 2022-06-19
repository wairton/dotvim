" **main**
" I'm not sure what this really changes other than support to old vi stuff
set nocompatible
" enable auto completion menu after pressing TAB.
set wildmenu
" make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
set wildignore=*.pyc
"enhance file information f
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
"display filename at the bottom
set laststatus=2
" enables mouse
set mouse=a


" **pet peeves and shortcuts**
command Wq wq
command WQ wq
command W w
command Q q
nmap <F2> ggVG"+y
set pastetoggle=<F3>
nmap <C-s> :w<CR>


" **code editing**
filetype on
filetype plugin on
syntax enable
colorscheme atomified
"enables number and relativenumber(rnu) but toggles rnu depending on the mode
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
" tabs should be spaces!
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType jinja2 setlocal syntax=html
"no trailing spaces
autocmd BufWritePre * :%s/\s\+$//e
" I saw this one but now sure if it is equivalent
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"configuring ctags
command! MakeTags !ctags -R .


" **ctrlp**
" https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-l>'
nmap <C-m> :CtrlPMRUFiles<CR>

"netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0


"flake8
"autocmd FileType python map <buffer> <F8> :call flake8()<CR>

"localvimrc
"https://github.com/embear/vim-localvimrc
"let g:localvimrc_sandbox = 0
"let g:localvimrc_ask = 0


" **roots
set tags=/home/wairton/toptal/roots/roots/mytreehoppr/tags,/home/wairton/toptal/roots/roots/.env/lib/tags


"tips
"%% shows current buffer path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
