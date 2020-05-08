#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Altera o visual do Ubuntu e adiciona algumas features 
# version: 1.0
# licença: MIT License

# ---------- CORES PARA MELHOR VISUALIZAÇÃO ---------- #

export corGreen="\033[1;32m" #Instalação VERDE
export corBlue="\033[1;34m" #Atualização AZUL
export corRed="\033[1;31m" #Remoção VERMELHO
export corGrey="\033[40;1;37m" #CINZA
export corYellow="\033[1;33m" #AMARELO

# ---------- PARAMETRO PASSADO DE script_menu ---------- #
senha="$1"

# ---------- CUSTOMIZAR VISUAL UBUNTU ---------- #

# ABRIR AS JANELAS SEMPRE NO MEIO DA TELA
gsettings set org.gnome.mutter center-new-windows 'true'

# Adiciona em arquivo TXT o local onde está sendo executado o scrip
pwd | sed 's/ /\\ /g' > $HOME/Caminho.txt

# Acessa o tema (seja de ícones, cursor, janelas ou shell) dentro da pasta "Custom", que deve estar no mesmo diretório do script
CAMINHO=$(head -n 1 $HOME/Caminho.txt)
DIR_CUSTOM="Custom"
CURSOR_THEME="Yaru-AD7-cursor"

# Apaga tudo dentro de ".icons" (isso evita comandos adicionais, quando extrair os ícones novamente no diretório)
rm $HOME/.icons/*

# Cria diretóroio ".icons" na home.
mkdir "$HOME/.icons"

# Extrai o cursor customizado por mim, em ".icons"

unzip -qo $CAMINHO/$DIR_CUSTOM/$CURSOR_THEME.zip -d /$HOME/.icons/$CURSOR_THEME/

# Ainda tenho que customizar os ícones baseado na última versão do Yaru
# gsettings set org.gnome.desktop.interface icon-theme "Yaru-AD7"

# TEMA DO CURSOR "DO MOUSE"
 gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR_THEME"

# TEMA NAS JANELAS
 gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"

# TEMA NO SHELL (deve ter previamente instalado a extensão  User-themes)
 gsettings set org.gnome.desktop.wm.preferences theme "Yaru-dark"

rm $HOME/Caminho.txt

echo ""
echo -e $corBlue " --- Visual do sistema customizado! --- \033[0m"
echo ""
