#!/bin/bash

shopt -s extglob

if [ $(pwd) == /home/k/dotfiles ]
then
  rm -rf !(.git|update.sh)
fi

cp -r ~/.config/termite ~/dotfiles
cp -r ~/.config/i3 ~/dotfiles
cp -r ~/.config/ranger ~/dotfiles
cp -r ~/.config/polybar ~/dotfiles
cp ~/.zprofile ~/dotfiles/zsh
cp ~/.vimrc ~/dotfiles/vim
cp ~/.zshrc ~/dotfiles/zsh
cp ~/.xmodmap-archlinux ~/dotfiles
cp -r ~/.oh-my-zsh ~/dotfiles/zsh

rm -rf ~/dotfile/zsh/.oh-my-zsh/.git
rm -rf ~/dotfile/zsh/.oh-my-zsh/custon/plugins/zsh-256color/.git
rm -rf ~/dotfile/zsh/.oh-my-zsh/custon/plugins/zsh-autosuggestions/.git


git add .
git commit -m "update dotfiles"
git push


