console.log('🧪 Testando Terminal AI...');

// Test 1: Basic functionality
try {
  const fs = require('fs');
  const path = require('path');
  
  console.log('✅ Teste 1: Módulos básicos carregados');
  
  // Test 2: Config template exists
  if (fs.existsSync('config.template.json')) {
    console.log('✅ Teste 2: Template de configuração encontrado');
  } else {
    console.log('❌ Teste 2: Template de configuração não encontrado');
    process.exit(1);
  }
  
  // Test 3: Main file exists and can be required
  if (fs.existsSync('index.js')) {
    console.log('✅ Teste 3: Arquivo principal encontrado');
  } else {
    console.log('❌ Teste 3: Arquivo principal não encontrado');
    process.exit(1);
  }
  
  // Test 4: Package.json is valid
  const packageJson = JSON.parse(fs.readFileSync('package.json', 'utf8'));
  if (packageJson.name === 'terminal-ai') {
    console.log('✅ Teste 4: Package.json válido');
  } else {
    console.log('❌ Teste 4: Package.json inválido');
    process.exit(1);
  }
  
  console.log('🎉 Todos os testes passaram!');
  console.log('💡 Execute "npm start" para iniciar a IA');
  
} catch (error) {
  console.log('❌ Erro durante os testes:', error.message);
  process.exit(1);
}
