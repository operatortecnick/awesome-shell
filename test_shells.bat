@echo off
echo ========================================
echo    SHELLS AVANÇADOS INSTALADOS
echo ========================================
echo.

echo Testando Zsh...
C:\msys64\usr\bin\zsh.exe --version
echo.

echo Testando Fish...
C:\msys64\usr\bin\fish.exe --version
echo.

echo Testando Nushell...
C:\nu\nu.exe --version
echo.

echo Testando Starship...
starship --version
echo.

echo ========================================
echo    CONFIGURAÇÕES
echo ========================================
echo.
echo Para usar Starship em qualquer shell:
echo eval "$(starship init bash)"
echo.
echo Para usar Zsh: zsh
echo Para usar Fish: fish
echo Para usar Nushell: nu
echo.
echo Arquivos de configuração criados:
echo - Starship: %USERPROFILE%\.config\starship.toml
echo - Bash: %USERPROFILE%\.bashrc
echo.
echo ========================================
echo    PRONTO PARA USAR!
echo ========================================
