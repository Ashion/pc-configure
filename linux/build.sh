#!/bin/sh
echo $PWD
if [ -e ~/.tmux.conf ]; then
	rm  ~/.tmux.conf
fi
ln -s $PWD/.tmux.conf ~/.tmux.conf
if [ -e ~/.vimrc ]; then
	rm  ~/.vimrc
fi
ln -s $PWD/.vimrc ~/.vimrc

if [ -e ~/.vim ]; then
	rm  -rf ~/.vim
fi
ln -s $PWD/.vim ~/.vim

if [ ! -e ~/.profile ]; then
	ln -s $PWD/.profile ~/.profile
fi

if [ -e ~/.bashrc ]; then
	rm  ~/.bashrc
fi
ln -s $PWD/.bashrc ~/.bashrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

