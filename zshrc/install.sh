#!/bin/bash

cp themes/* ~/.oh-my-zsh/custom/themes -R
cp powerlevel9k.zsh ~/.oh-my-zsh/custom/powerlevel9k.zsh
echo "source ~/.oh-my-zsh/custom/powerlevel9k.zsh" >> ~/.zshrc
