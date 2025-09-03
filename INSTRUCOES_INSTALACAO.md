# Instruções para instalar shells no Windows

## 1. Instalar Zsh

- Baixe o instalador do MSYS2: [https://www.msys2.org/](https://www.msys2.org/)
- Instale e execute o MSYS2
- No terminal MSYS2, execute: `pacman -S zsh`
- Instale Oh My Zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## 2. Instalar Fish

- No MSYS2, execute: `pacman -S fish`

## 3. Configurar

- Para usar Zsh no Git Bash, altere o shell padrão em `C:\Program Files\Git\etc\bash.bashrc`
- Adicione: `exec zsh`

## 4. Outros shells

- PowerShell já está instalado
- Para WSL, execute como administrador: `wsl --install -d Ubuntu`

Reinicie o terminal após as instalações.
