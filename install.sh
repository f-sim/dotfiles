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

echo "Install pyenv ..."
if [ -d "$HOME/.pyenv" ]; then
  echo "  Backup existing .pyenv installation"
  mv $HOME/.pyenv $HOME/.pyenv.back
fi

if [ -L "$HOME/.pyenv" ]; then
  echo "  Remove existing link"
  rm -f $HOME/.pyenv
fi

ln -s $dotfiles_path/.pyenv $HOME/.pyenv

echo "Install nvim ..."
if [ -d "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/" ]; then
  echo "Backup nvim configuration"
  mv "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/" "${XDG_DATA_HOME:-$HOME/.local/share}/nvim.bak"
fi

if [ -L "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/" ]; then
  echo "Remove nvim link"
  rm -f ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/
fi
mkdir -p ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/
ln -s $dotfiles_path/vim-plug/plug.vim ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim


