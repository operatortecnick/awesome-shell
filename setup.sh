#!/usr/bin/env bash

# Setup script for Terminal AI

echo "🚀 Configuração do Terminal AI"
echo "==============================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado!"
    echo "🔄 Instalando Node.js..."
    
    # For different systems
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        echo "💡 Para Windows, baixe Node.js de: https://nodejs.org/"
        echo "   Ou use: winget install OpenJS.NodeJS"
        exit 1
    elif command -v apt &> /dev/null; then
        sudo apt update && sudo apt install -y nodejs npm
    elif command -v yum &> /dev/null; then
        sudo yum install -y nodejs npm
    elif command -v brew &> /dev/null; then
        brew install node
    else
        echo "💡 Instale Node.js manualmente: https://nodejs.org/"
        exit 1
    fi
fi

echo "✅ Node.js $(node --version) encontrado"

# Navigate to terminal-ai directory
cd "$(dirname "$0")/terminal-ai" || {
    echo "❌ Diretório terminal-ai não encontrado"
    exit 1
}

echo "📦 Instalando dependências..."
npm install

# Create config if it doesn't exist
if [ ! -f ~/.terminal-ai-config.json ]; then
    echo "📝 Criando arquivo de configuração..."
    cp config.template.json ~/.terminal-ai-config.json
    echo "✅ Template de configuração criado em: ~/.terminal-ai-config.json"
fi

# Test the installation
echo "🧪 Testando instalação..."
if node test.js; then
    echo "✅ Teste básico passou!"
else
    echo "❌ Teste básico falhou"
    exit 1
fi

echo ""
echo "🎉 Configuração concluída!"
echo ""
echo "📋 Próximos passos:"
echo "1. Execute: cd terminal-ai && node index.js"
echo "2. Configure sua chave API quando solicitado"
echo "3. Consulte CONFIGURACAO_API.md para obter chaves gratuitas"
echo ""
echo "💡 Comandos úteis:"
echo "• node index.js - Iniciar a IA"
echo "• npm test - Executar testes"
echo ""