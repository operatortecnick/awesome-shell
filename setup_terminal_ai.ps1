# Terminal AI Setup Script para Windows
# Execute como: .\setup_terminal_ai.ps1

Write-Host "🚀 Configuração do Terminal AI" -ForegroundColor Yellow
Write-Host "==============================="

# Verificar se Node.js está instalado
try {
    $nodeVersion = node --version
    Write-Host "✅ Node.js $nodeVersion encontrado" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js não encontrado!" -ForegroundColor Red
    Write-Host "🔄 Instalando Node.js via winget..." -ForegroundColor Cyan
    
    try {
        winget install OpenJS.NodeJS -e --accept-source-agreements --accept-package-agreements
        Write-Host "✅ Node.js instalado! Reinicie o PowerShell e execute novamente." -ForegroundColor Green
        Read-Host "Pressione Enter para sair"
        exit
    } catch {
        Write-Host "❌ Erro ao instalar Node.js" -ForegroundColor Red
        Write-Host "💡 Baixe manualmente de: https://nodejs.org/" -ForegroundColor Yellow
        Read-Host "Pressione Enter para sair"
        exit 1
    }
}

# Verificar política de execução
$policy = Get-ExecutionPolicy -Scope CurrentUser
if ($policy -eq "Restricted") {
    Write-Host "🔧 Ajustando política de execução..." -ForegroundColor Cyan
    try {
        Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
        Write-Host "✅ Política ajustada" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  Erro ao ajustar política. Execute como administrador:" -ForegroundColor Yellow
        Write-Host "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser" -ForegroundColor White
    }
}

# Navegar para o diretório terminal-ai
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$terminalAiDir = Join-Path $scriptDir "terminal-ai"

if (-not (Test-Path $terminalAiDir)) {
    Write-Host "❌ Diretório terminal-ai não encontrado em: $terminalAiDir" -ForegroundColor Red
    Read-Host "Pressione Enter para sair"
    exit 1
}

Set-Location $terminalAiDir
Write-Host "📂 Navegando para: $terminalAiDir" -ForegroundColor Cyan

# Instalar dependências
Write-Host "📦 Instalando dependências..." -ForegroundColor Cyan
try {
    npm install
    Write-Host "✅ Dependências instaladas!" -ForegroundColor Green
} catch {
    Write-Host "❌ Erro ao instalar dependências" -ForegroundColor Red
    Write-Host "💡 Tente executar manualmente: npm install" -ForegroundColor Yellow
    Read-Host "Pressione Enter para continuar"
}

# Criar arquivo de configuração se não existir
$configPath = Join-Path $env:USERPROFILE ".terminal-ai-config.json"
if (-not (Test-Path $configPath)) {
    Write-Host "📝 Criando arquivo de configuração..." -ForegroundColor Cyan
    try {
        Copy-Item "config.template.json" $configPath
        Write-Host "✅ Template criado em: $configPath" -ForegroundColor Green
    } catch {
        Write-Host "⚠️  Erro ao criar template de configuração" -ForegroundColor Yellow
    }
}

# Testar a instalação
Write-Host "🧪 Testando instalação..." -ForegroundColor Cyan
try {
    node test.js
    Write-Host "✅ Teste básico passou!" -ForegroundColor Green
} catch {
    Write-Host "❌ Teste básico falhou" -ForegroundColor Red
}

Write-Host ""
Write-Host "🎉 Configuração concluída!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Próximos passos:" -ForegroundColor Yellow
Write-Host "1. Execute: node index.js" -ForegroundColor White
Write-Host "2. Configure sua chave API quando solicitado" -ForegroundColor White
Write-Host "3. Consulte CONFIGURACAO_API.md para obter chaves gratuitas" -ForegroundColor White
Write-Host ""
Write-Host "💡 Comandos úteis:" -ForegroundColor Yellow
Write-Host "• node index.js - Iniciar a IA" -ForegroundColor White
Write-Host "• npm test - Executar testes" -ForegroundColor White
Write-Host ""

# Perguntar se quer executar agora
$response = Read-Host "Deseja executar a IA agora? (s/n)"
if ($response -eq 's' -or $response -eq 'S' -or $response -eq 'sim' -or $response -eq 'y') {
    Write-Host "🚀 Iniciando Terminal AI..." -ForegroundColor Green
    node index.js
}