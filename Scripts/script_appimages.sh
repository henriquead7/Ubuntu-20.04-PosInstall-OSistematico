#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Efetua o download de pacotes no formato AppImage.
# version: 1.0
# licença: MIT License

# ---------- CORES PARA MELHOR VISUALIZAÇÃO ---------- #

export corGreen="\033[1;32m" #Instalação VERDE
export corBlue="\033[1;34m" #Atualização AZUL
export corRed="\033[1;31m" #Remoção VERMELHO
export corGrey="\033[40;1;37m" #CINZA
export corYellow="\033[1;33m" #AMARELO

# ---------- VARIÁVEIS DE AMBIENTE APPIMAGES ---------- #

URL_RPCS3_APPIMAGE="https://github.com/RPCS3/rpcs3-binaries-linux/releases/download/build-ffd5a9e91c9d1ee3ec5738da58204e501b3ac132/rpcs3-v0.0.9-9791-ffd5a9e9_linux64.AppImage"

URL_WEBCAMOID="https://github.com/webcamoid/webcamoid/releases/download/8.7.1/webcamoid-8.7.1-x86_64.AppImage"

DIR_APPIMAGES="$HOME/Downloads/Apps_APPIMAGE"

# ---------- DOWNLOAD DOS APPIMAGES ---------- #
echo ""
echo -e $corYellow " --- Efetuando o download dos AppImages --- \033[0m"
mkdir "$DIR_DOWNLOADS"
wget -c "$URL_RPCS3_APPIMAGE"       -P "$DIR_APPIMAGES"
echo ""
echo -e $corGreen " --- AppImages em suas pastas! --- \033[0m"
echo ""

