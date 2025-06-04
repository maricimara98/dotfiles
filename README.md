# 💻 Dotfiles de Jucimara Pereira

Este repositório contém as configurações pessoais de ambiente de desenvolvimento da usuária **Jucimara Pereira** (`maricimara98`), otimizadas para sistemas Linux (Manjaro). A estrutura é baseada em boas práticas descritas no livro *Pro Git* e padrões de projetos profissionais.

## 🧩 Componentes

- 🎯 Git com aliases, ignore global e branch padrão
- 🔐 Chave SSH com configuração automática
- 🛠️ Scripts de setup para automatizar ambientes
- 📁 Organização modular em `git/`, `ssh/`, `setup/`

---

## 📂 Estrutura

```
dotfiles/
├── git/
│   ├── .gitconfig            # Configurações globais do Git
│   └── .gitignore_global     # Padrões globais ignorados
├── ssh/
│   └── config                # Configuração de chave SSH para GitHub
├── setup/
│   └── setup_git_github.sh  # Script automatizado de setup do Git + SSH
├── install.sh               # Aplica os arquivos no sistema
└── README.md                # Este documento
```

---

## 🚀 Como Usar

1. **Clone o repositório**:
   ```bash
   git clone git@github.com:maricimara98/dotfiles.git
   cd dotfiles
   ```

2. **Dê permissão de execução aos scripts**:
   ```bash
   chmod +x install.sh setup/setup_git_github.sh
   ```

3. **Instale os arquivos de configuração**:
   ```bash
   ./install.sh
   ```

4. **Configure Git, GitHub e chave SSH**:
   ```bash
   ./setup/setup_git_github.sh
   ```

---

## ✅ Requisitos

- `git` — controle de versão
- `micro` — editor de texto
- `openssh` — suporte SSH
- (opcional) `gh` — GitHub CLI para automatizar criação de repositórios

---

## 📋 Baseado em Boas Práticas

- Estrutura modular de dotfiles
- `.gitignore_global` com padrões universais
- Configuração do Git descrita no *Pro Git*
- Padronização de mensagens de commit: [A note about Git commit messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)

---

## 🔐 Segurança

A chave SSH é gerada localmente e **não incluída no repositório**. O script `setup_git_github.sh` guia a criação e configuração de forma segura.

---

## 📦 Futuras Expansões

- Suporte a `zsh`, `poetry`, `neovim`
- Hooks (`.git/hooks/`) para padronizar commits
- Setup portátil com `Makefile` ou `Ansible`


---

## 🆕 O que foi adicionado nesta versão:

- `shell/aliases.sh` com atalhos úteis de terminal
- `shell/zsh/.zshrc` com tema, plugins e integração com aliases
- `neovim/init.lua` com configuração básica (modo moderno)
- `hooks/.pre-commit-config.yaml` com hooks de qualidade de código
- `python/poetry/` para ambientes Python isolados
- `Makefile` para automatizar o setup completo
