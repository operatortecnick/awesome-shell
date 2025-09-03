@echo off
echo Instalando Zsh no Git Bash...
"C:\Program Files\Git\bin\bash.exe" -c "wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash"
echo Zsh instalado com Oh My Zsh.

echo Instalando Fish...
"C:\Program Files\Git\bin\bash.exe" -c "pacman -S fish --noconfirm"
echo Fish instalado.

echo Instalacao concluida. Reinicie o terminal para usar os novos shells.
