# 🔑 Configuração da API para Terminal AI

## Problema: Créditos Esgotados na Groq

Se você está enfrentando problemas de crédito na Groq, aqui estão as soluções:

### ✅ Soluções Imediatas

#### 1. **Groq API Gratuita (Recomendado)**
- **Site**: https://console.groq.com/
- **Créditos**: Gratuitos com limite diário
- **Vantagens**: Rápido, sem censura, gratuito
- **Limitações**: Rate limit de requisições

#### 2. **OpenAI API**
- **Site**: https://platform.openai.com/api-keys
- **Créditos**: $5 grátis para novos usuários
- **Vantagens**: Modelos avançados
- **Limitações**: Mais censurado

#### 3. **Anthropic Claude**
- **Site**: https://console.anthropic.com/
- **Créditos**: Créditos gratuitos limitados
- **Vantagens**: Boa qualidade
- **Limitações**: Rate limits

## 🚀 Como Configurar

### Método 1: Configuração Automática
```bash
cd terminal-ai
node index.js
```
Siga as instruções na tela para configurar automaticamente.

### Método 2: Configuração Manual
1. **Copie o template de configuração:**
   ```bash
   cp config.template.json ~/.terminal-ai-config.json
   ```

2. **Edite o arquivo de configuração:**
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

## 🔧 Obter Chaves API

### Groq (Gratuito - Recomendado)
1. Acesse: https://console.groq.com/
2. Crie uma conta (pode usar GitHub)
3. Vá em "API Keys"
4. Clique em "Create API Key"
5. Copie a chave gerada

### OpenAI
1. Acesse: https://platform.openai.com/
2. Crie uma conta
3. Vá em "API Keys"
4. Clique em "Create new secret key"
5. Copie a chave (você recebe $5 grátis)

### Anthropic
1. Acesse: https://console.anthropic.com/
2. Crie uma conta
3. Vá em "API Keys"
4. Gere uma nova chave
5. Copie a chave

## ⚠️ Resolução de Problemas

### Erro: "Insufficient credits"
```
❌ Erro de crédito na API
✅ Solução: Trocar para outro provedor ou aguardar renovação
```

### Erro: "Permission denied"
```bash
# Execute como administrador no PowerShell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Erro: "API key invalid"
- Verifique se a chave está correta
- Confirme se a chave não expirou
- Teste a chave na documentação oficial da API

## 🎯 Configurações Recomendadas

### Para uso gratuito (Groq):
```json
{
  "provider": "groq",
  "model": "mixtral-8x7b-32768",
  "temperature": 0.7,
  "maxTokens": 1024
}
```

### Para uso avançado (OpenAI):
```json
{
  "provider": "openai", 
  "model": "gpt-3.5-turbo",
  "temperature": 0.8,
  "maxTokens": 2048
}
```

## 🔄 Trocar de Provedor

Para trocar de provedor sem reconfigurar tudo:
```bash
node index.js
# Digite: config
# Em seguida configure nova API
```

## 📱 Suporte

Se ainda tiver problemas:
1. Verifique sua conexão com internet
2. Confirme se o Node.js está atualizado
3. Execute `npm install` para atualizar dependências
4. Consulte os logs de erro para mais detalhes

---
**💡 Dica**: O Groq oferece o melhor custo-benefício para uso pessoal!