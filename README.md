My vimrc configuration
=============

This idea is based on
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

Setup instructions:
git clone git@github.com:wairton/dotvim.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update

Plugins that I use:
ctrlp.vim
matchit
mru
snipmate
tcomment_vim
vim-localvimrc
vim-repeat
vim-surround
