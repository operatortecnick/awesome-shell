# Instalar Zsh
Write-Host "Instalando Zsh..."
Invoke-WebRequest -Uri "https://github.com/msys2/msys2-installer/releases/download/2024-07-27/msys2-x86_64-20240727.exe" -OutFile "$env:TEMP\msys2-installer.exe"
Start-Process -FilePath "$env:TEMP\msys2-installer.exe" -ArgumentList "/S" -Wait

# Adicionar ao PATH
$env:Path += ";C:\msys64\usr\bin"

# Instalar Fish via pacman
Write-Host "Instalando Fish..."
& "C:\msys64\usr\bin\bash.exe" -c "pacman -S fish --noconfirm"

Write-Host "Instalacao concluida."
