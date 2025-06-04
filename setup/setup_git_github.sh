#!/bin/bash
# Script de configuração Git + GitHub com SSH para Jucimara Pereira

NOME="Jucimara Pereira"
EMAIL="maricimara98@outlook.com"
EDITOR="micro"
CHAVE="$HOME/.ssh/id_ed25519"
GITIGNORE="$HOME/.gitignore_global"

echo "Configurando Git..."
git config --global user.name "$NOME"
git config --global user.email "$EMAIL"
git config --global core.editor "$EDITOR"
git config --global core.autocrlf input
git config --global color.ui auto
git config --global init.defaultBranch main
git config --global core.excludesfile "$GITIGNORE"

echo "Configurando aliases..."
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm "commit -m"
git config --global alias.unstage "reset HEAD --"
git config --global alias.last "log -1 HEAD"
git config --global alias.lg "log --oneline --graph --decorate --all"

echo "Gerando .gitignore_global..."
cat > "$GITIGNORE" <<EOF
*.log
*.pyc
__pycache__/
.env
.venv/
.DS_Store
.vscode/
.idea/
EOF

echo "Configurando chave SSH..."
if [ ! -f "$CHAVE" ]; then
  ssh-keygen -t ed25519 -C "$EMAIL" -f "$CHAVE" -N ""
  eval "$(ssh-agent -s)"
  ssh-add "$CHAVE"
fi

echo "Configurando ~/.ssh/config..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh
cat > ~/.ssh/config <<EOF
Host github.com
    HostName github.com
    User git
    IdentityFile $CHAVE
EOF
chmod 600 ~/.ssh/config

echo "Chave pública SSH:"
cat "$CHAVE.pub"

echo "Adicione no GitHub: https://github.com/settings/keys"
echo "Configuração concluída!"
