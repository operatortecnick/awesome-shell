# Terminal AI - IA Avançada no Terminal

Uma IA avançada e sem censura que roda diretamente no seu terminal Windows, usando JavaScript e Node.js.

## 🚀 Características

- **Sem Censura**: Respostas completas e sem restrições
- **Múltiplos Provedores**: Suporte para Groq, OpenAI e Anthropic
- **Interface Interativa**: Terminal limpo e intuitivo
- **Histórico de Conversa**: Mantém o contexto das conversas
- **Configuração Flexível**: Personalize temperatura, tokens, etc.
- **Tratamento de Erros**: Resoluções automáticas para problemas de crédito/API

## 📋 Pré-requisitos

- Node.js v16 ou superior
- Chave API de um dos provedores suportados

## ⚡ Instalação Rápida

### Windows (Recomendado)
```powershell
# Execute no PowerShell como administrador
.\setup_terminal_ai.ps1
```

### Linux/macOS
```bash
chmod +x setup.sh
./setup.sh
```

## 🔧 Instalação Manual

1. **Instalar dependências:**
   ```bash
   npm install
   ```

2. **Executar a IA:**
   ```bash
   node index.js
   ```

## ⚙️ Configuração

Na primeira execução, você será solicitado a configurar:

1. **Escolher provedor:**
   - `groq` (Recomendado - Gratuito, sem censura)
   - `openai` ($5 grátis para novos usuários)
   - `anthropic` (Créditos gratuitos limitados)

2. **Inserir chave API:**
   - Groq: <https://console.groq.com/>
   - OpenAI: <https://platform.openai.com/api-keys>
   - Anthropic: <https://console.anthropic.com/>

## 📚 Comandos Disponíveis

- `help` - Mostra ajuda
- `clear` - Limpa a tela
- `config` - Mostra configuração atual
- `reconfig/setup` - Reconfigura API
- `docs/api` - Ajuda com configuração de API
- `history` - Mostra histórico da conversa
- `reset` - Limpa histórico da conversa
- `exit` - Sai do programa

## 🎯 Uso

1. Execute `node index.js`
2. Configure sua API na primeira vez
3. Digite suas perguntas normalmente
4. Use comandos especiais quando necessário

## ⚠️ Solução de Problemas

### Erro: "Créditos insuficientes" / "Rate limit"
```
💳 Soluções automáticas:
1. Aguarde alguns minutos
2. Digite "reconfig" para trocar provedor
3. Consulte: ../CONFIGURACAO_API.md
```

### Erro: "Permission denied" (Windows)
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Reconfiguração rápida
```bash
node index.js
# Digite: reconfig
```

## 🔑 Configuração Manual

Edite o arquivo `.terminal-ai-config.json` na sua pasta home:

```json
{
  "apiKey": "sua-chave-api-aqui",
  "provider": "groq",
  "model": "mixtral-8x7b-32768",
  "temperature": 0.8,
  "maxTokens": 2048,
  "uncensored": true
}
```

## 🛠️ Desenvolvimento

Para modificar o código:

1. Edite `index.js`
2. Teste suas mudanças: `node index.js`
3. Adicione novas funcionalidades conforme necessário

## 📝 Notas

- O histórico é mantido apenas na sessão atual
- As configurações são salvas automaticamente
- Suporte completo para Windows PowerShell e Command Prompt
- Interface colorida e moderna
- Tratamento inteligente de erros de API

## 🔒 Privacidade

- Suas conversas ficam apenas no seu computador
- Chaves API são armazenadas localmente
- Não há telemetria ou dados enviados para terceiros

---

**Desenvolvido com ❤️ para usuários avançados que querem controle total sobre sua IA.**

**💡 Para resolver problemas de crédito/API, consulte: ../CONFIGURACAO_API.md**
