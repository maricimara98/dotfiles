#!/bin/bash

echo "Aplicando dotfiles..."

ln -sf "$PWD/git/.gitconfig" ~/.gitconfig
ln -sf "$PWD/git/.gitignore_global" ~/.gitignore_global
ln -sf "$PWD/ssh/config" ~/.ssh/config

echo "Dotfiles aplicados com sucesso!"
