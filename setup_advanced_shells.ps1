# Script para instalar shells avançados

Write-Host "=== INSTALANDO SHELLS AVANÇADOS ===" -ForegroundColor Yellow

# Instalar MSYS2
Write-Host "1. Instalando MSYS2..." -ForegroundColor Cyan
winget install --id MSYS2.MSYS2 -e --source winget

# Adicionar ao PATH
$env:Path += ";C:\msys64\usr\bin"

# Instalar shells
Write-Host "2. Instalando Zsh..." -ForegroundColor Cyan
C:\msys64\usr\bin\bash.exe -c "pacman -S zsh --noconfirm"

Write-Host "3. Instalando Fish..." -ForegroundColor Cyan
C:\msys64\usr\bin\bash.exe -c "pacman -S fish --noconfirm"

Write-Host "4. Instalando Nushell..." -ForegroundColor Cyan
C:\msys64\usr\bin\bash.exe -c "pacman -S nushell --noconfirm"

Write-Host "5. Instalando Starship..." -ForegroundColor Cyan
C:\msys64\usr\bin\bash.exe -c "curl -sS https://starship.rs/install.sh | sh"

Write-Host "`n✅ INSTALAÇÃO CONCLUÍDA!" -ForegroundColor Green
Write-Host "Shells instalados:" -ForegroundColor Cyan
Write-Host "• Zsh" -ForegroundColor White
Write-Host "• Fish" -ForegroundColor White
Write-Host "• Nushell" -ForegroundColor White
Write-Host "• Starship" -ForegroundColor White

Write-Host "`nPara usar:" -ForegroundColor Yellow
Write-Host "• Zsh: zsh" -ForegroundColor White
Write-Host "• Fish: fish" -ForegroundColor White
Write-Host "• Nushell: nu" -ForegroundColor White
