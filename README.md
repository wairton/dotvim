My vimrc configuration
=============

It is based on this [vimcast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

Setup instructions:
```
git clone git@github.com:wairton/dotvim.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update
```

Plugins that I use:
* [ctrlp.vim](https://github.com/kien/ctrlp.vim.git)
* [matchit](https://github.com/tmhedberg/matchit.git)
* [mru](https://github.com/vim-scripts/mru.vim.git)
* [snipmate](https://github.com/garbas/vim-snipmate.git)
* [tcomment_vim](https://github.com/tomtom/tcomment_vim.git)
* [vim-localvimrc](https://github.com/embear/vim-localvimrc.git)
* [vim-repeat](https://github.com/tpope/vim-repeat.git)
* [vim-surround](https://github.com/tpope/vim-surround.git)
* [typescript-vim](https://github.com/leafgarland/typescript-vim.git)
* [vim-snipmate](https://github.com/honza/vim-snippets.git)
