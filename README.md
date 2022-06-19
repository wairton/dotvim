My vimrc configuration
=============

Setup instructions:
```
mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp
git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/plugins/start/fugitive
git clone https://github.com/tpope/vim-vinegar ~/.vim/pack/plugins/start/


git clone git@github.com:wairton/dotvim.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update
```

Plugins that I use:
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-vinegar](https://github.com/tpope/vim-vinegar)

* [snipmate](https://github.com/garbas/vim-snipmate.git)
* [tcomment_vim](https://github.com/tomtom/tcomment_vim.git)
* [vim-localvimrc](https://github.com/embear/vim-localvimrc.git)
* [vim-repeat](https://github.com/tpope/vim-repeat.git)
* [vim-surround](https://github.com/tpope/vim-surround.git)
* [typescript-vim](https://github.com/leafgarland/typescript-vim.git)
* [javascript-syntax](https://github.com/jelera/vim-javascript-syntax.git)
* [jshint2](https://github.com/Shutnik/jshint2.vim.git) (requires jshint installed)
