const fs = require('fs');
const path = require('path');

console.log('🔧 Verificação de Configuração do Terminal AI');
console.log('===========================================');

// Check Node.js version
const nodeVersion = process.version;
console.log(`📊 Node.js versão: ${nodeVersion}`);

if (parseInt(nodeVersion.slice(1)) < 16) {
  console.log('⚠️  Versão do Node.js pode ser incompatível (recomendado: v16+)');
} else {
  console.log('✅ Versão do Node.js compatível');
}

// Check dependencies
try {
  const packageJson = JSON.parse(fs.readFileSync('package.json', 'utf8'));
  const dependencies = Object.keys(packageJson.dependencies || {});
  
  console.log('\n📦 Verificando dependências...');
  let allDepsOk = true;
  
  dependencies.forEach(dep => {
    try {
      require(dep);
      console.log(`✅ ${dep}`);
    } catch (error) {
      console.log(`❌ ${dep} - Execute: npm install`);
      allDepsOk = false;
    }
  });
  
  if (allDepsOk) {
    console.log('✅ Todas as dependências estão instaladas');
  }
  
} catch (error) {
  console.log('❌ Erro ao verificar dependências:', error.message);
}

// Check config file
const configPath = path.join(process.env.USERPROFILE || process.env.HOME || process.cwd(), '.terminal-ai-config.json');
console.log('\n🔑 Verificando configuração...');

if (fs.existsSync(configPath)) {
  try {
    const config = JSON.parse(fs.readFileSync(configPath, 'utf8'));
    console.log('✅ Arquivo de configuração encontrado');
    
    if (config.apiKey && config.apiKey.length > 10) {
      console.log('✅ Chave API configurada');
    } else {
      console.log('⚠️  Chave API não configurada ou inválida');
      console.log('💡 Execute "npm start" para configurar');
    }
    
    console.log(`📡 Provedor: ${config.provider || 'não definido'}`);
    console.log(`🤖 Modelo: ${config.model || 'não definido'}`);
    
  } catch (error) {
    console.log('❌ Arquivo de configuração corrompido');
    console.log('🔄 Será recriado na próxima execução');
  }
} else {
  console.log('⚠️  Arquivo de configuração não encontrado');
  console.log('💡 Será criado na primeira execução');
}

// Check template
if (fs.existsSync('config.template.json')) {
  console.log('✅ Template de configuração disponível');
} else {
  console.log('❌ Template de configuração não encontrado');
}

console.log('\n🚀 Status do Sistema:');
console.log('====================');

// Summary
let issues = 0;
if (parseInt(nodeVersion.slice(1)) < 16) issues++;
if (!fs.existsSync(configPath)) issues++;

if (issues === 0) {
  console.log('🎉 Sistema pronto para uso!');
  console.log('💡 Execute: npm start');
} else {
  console.log(`⚠️  ${issues} problema(s) encontrado(s)`);
  console.log('💡 Consulte a documentação para resolver');
}

console.log('\n📚 Recursos:');
console.log('• npm start - Iniciar a IA');
console.log('• npm test - Executar testes');
console.log('• Documentação: ../CONFIGURACAO_API.md');