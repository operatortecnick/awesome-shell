# Terminal AI - IA Avançada no Terminal

Uma IA avançada e sem censura que roda diretamente no seu terminal Windows, usando JavaScript e Node.js.

## 🚀 Características

- **Sem Censura**: Respostas completas e sem restrições
- **Múltiplos Provedores**: Suporte para Groq, OpenAI e Anthropic
- **Interface Interativa**: Terminal limpo e intuitivo
- **Histórico de Conversa**: Mantém o contexto das conversas
- **Configuração Flexível**: Personalize temperatura, tokens, etc.

## 📋 Pré-requisitos

- Node.js v16 ou superior
- Chave API de um dos provedores suportados

## 🔧 Instalação

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
   - `groq` (Recomendado - Sem censura)
   - `openai`
   - `anthropic`

2. **Inserir chave API:**
   - Groq: <https://console.groq.com/>
   - OpenAI: <https://platform.openai.com/api-keys>
   - Anthropic: <https://console.anthropic.com/>

## 📚 Comandos Disponíveis

- `help` - Mostra ajuda
- `clear` - Limpa a tela
- `config` - Mostra configuração atual
- `history` - Mostra histórico da conversa
- `reset` - Limpa histórico da conversa
- `exit` - Sai do programa

## 🎯 Uso

1. Execute `node index.js`
2. Configure sua API na primeira vez
3. Digite suas perguntas normalmente
4. Use comandos especiais quando necessário

## 🔑 Configuração Manual

Você pode editar o arquivo `.terminal-ai-config.json` na sua pasta home:

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

## 🔒 Privacidade

- Suas conversas ficam apenas no seu computador
- Chaves API são armazenadas localmente
- Não há telemetria ou dados enviados para terceiros

---

**Desenvolvido com ❤️ para usuários avançados que querem controle total sobre sua IA.**
