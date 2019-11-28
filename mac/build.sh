#!/bin/sh
echo $PWD

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew install brew-cask-completion
brew cask install google-chrome
brew cask install iterm2
brew cask install alfred
cd /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
cd ../../../..
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
brew update
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile 
brew cask install visual-studio-code
brew install tmux
brew install wget

ln -s $PWD/.zshrc ~/.zshrc

cd ~/.oh-my-zsh/plugins
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions\n
source ~/.zshrc
brew install zsh-syntax-highlighting
source ~/.zshrc
brew install node
brew cask install cheatsheet
brew cask install dash
brew install go
brew install mmark
brew install tldr
brew install nmap

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
f:

ln -s $PWD/.vim ~/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

