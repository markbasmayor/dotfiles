#!/bin/bash

sudo apt install -y zsh
sudo apt-get install -y powerline fonts-powerline

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc


cp themes/* ~/.oh-my-zsh/custom/themes -R
cp powerlevel9k.zsh ~/.oh-my-zsh/custom/powerlevel9k.zsh
echo "source ~/.oh-my-zsh/custom/powerlevel9k.zsh" >> ~/.zshrc

chsh -s /bin/zsh mark

