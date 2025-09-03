# 🚀 Guia de Início Rápido - Awesome Shell + IA

Este repositório oferece scripts para instalar shells avançados e uma IA completa para terminal.

## ⚡ Instalação em 2 Passos

### 1. **Instalar Shells Avançados**
```powershell
# Execute no PowerShell como administrador
.\setup_advanced_shells.ps1
```

### 2. **Configurar IA no Terminal** 
```powershell
# Execute no PowerShell
.\setup_terminal_ai.ps1
```

## 🎯 O que você obtém

### Shells Instalados:
- ✅ **Zsh** - Shell avançado com Oh My Zsh
- ✅ **Fish** - Shell inteligente com autocomplete
- ✅ **Nushell** - Shell moderno orientado a dados
- ✅ **Starship** - Prompt personalizado

### IA no Terminal:
- 🤖 **Terminal AI** - IA sem censura no terminal
- 🆓 **Múltiplos provedores** - Groq (gratuito), OpenAI, Anthropic
- 🎨 **Interface moderna** - Colorida e intuitiva
- 💬 **Histórico de conversa** - Mantém contexto

## 🔧 Resolução de Problemas

### Erro de Permissão (Windows)
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Problemas com Crédito da IA
1. **Consulte**: `CONFIGURACAO_API.md`
2. **Execute**: `cd terminal-ai && node index.js`
3. **Digite**: `reconfig` para trocar provedor

### Chaves API Gratuitas
- **Groq**: https://console.groq.com/ (Recomendado)
- **OpenAI**: https://platform.openai.com/ ($5 grátis)
- **Anthropic**: https://console.anthropic.com/

## 📚 Documentação Completa

- 📋 `INSTRUCOES_INSTALACAO.md` - Instalação detalhada
- 🔑 `CONFIGURACAO_API.md` - Configuração de APIs
- 🤖 `terminal-ai/README.md` - Documentação da IA

## 🎮 Comandos Úteis

### Shells
```bash
zsh          # Iniciar Zsh
fish         # Iniciar Fish  
nu           # Iniciar Nushell
```

### IA
```bash
cd terminal-ai
npm start    # Iniciar IA
npm test     # Testar instalação
npm run setup # Verificar sistema
```

### Comandos da IA
```
help         # Mostrar ajuda
reconfig     # Reconfigurar API
docs         # Ajuda da API
clear        # Limpar tela
exit         # Sair
```

## 🆘 Suporte

1. **Leia a documentação** nos arquivos `.md`
2. **Execute os testes** com `npm test`
3. **Verifique configuração** com `npm run setup`
4. **Consulte logs** para erros específicos

---
**💡 Dica**: Comece com Groq API (gratuita) para testar a IA!