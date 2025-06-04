# Makefile para setup rápido
install:
	./install.sh
	./setup/setup_git_github.sh
	pre-commit install

zsh:
	ln -sf $$PWD/shell/zsh/.zshrc ~/.zshrc

aliases:
	ln -sf $$PWD/shell/aliases.sh ~/.aliases

neovim:
	mkdir -p ~/.config/nvim
	ln -sf $$PWD/neovim/init.lua ~/.config/nvim/init.lua
