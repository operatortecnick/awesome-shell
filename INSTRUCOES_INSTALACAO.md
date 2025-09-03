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

## 5. IA no Terminal (Terminal AI)

### Instalação Rápida
```powershell
# Execute no PowerShell como administrador
.\setup_terminal_ai.ps1
```

### Instalação Manual
```bash
cd terminal-ai
npm install
npm start
```

### Configuração de API
- **Problemas com crédito?** Consulte: `CONFIGURACAO_API.md`
- **Groq (Gratuito)**: https://console.groq.com/
- **OpenAI ($5 grátis)**: https://platform.openai.com/api-keys
- **Anthropic**: https://console.anthropic.com/

### Comandos da IA
- `node index.js` - Iniciar a IA
- `reconfig` - Reconfigurar API
- `docs` - Ajuda da API

Reinicie o terminal após as instalações.
