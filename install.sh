#!/usr/bin/env zsh

dotfiles_path=${0:a:h}

echo "Install ZSH and oh-my-zsh ..."

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "  Backup existing .oh-my-zsh installation"
  mv $HOME/.oh-my-zsh $HOME/.oh-my-zsh.bak
fi

if [ -L "$HOME/.oh-my-zsh" ]; then
  echo "  Remove existing link"
  rm -f $HOME/.oh-my-zsh
fi

ln -s $dotfiles_path/.oh-my-zsh $HOME/.oh-my-zsh

if [ -e "$HOME/.zshrc" ]; then
  echo "  Backup existing .zshrc"
  mv $HOME/.zshrc $HOME/.zshrc.bak
fi

ln -s $dotfiles_path/.zshrc $HOME/.zshrc
