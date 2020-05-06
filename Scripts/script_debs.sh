#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Efetua o download e instala pacotees DEB.
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

# ---------- VARIÁVEIS DE AMBIENTE DEBS ---------- #

GOOGLE_CHROME="google-chrome-stable_current_amd64.deb"
APP_4K_VIDEO_DOWNLOADER="4kvideodownloader_4.12.1-1_amd64.deb"
APP_4K_YOUTUBE_TOMP3="4kyoutubetomp3_3.12.0-1_amd64.deb"
SIMPLE_NOTE="Simplenote-linux-1.15.1-amd64.deb"
OPENCOMIC="v0.1.5/opencomic_0.1.5_amd64.deb"
XNCONVERT="XnConvert-linux-x64.deb"

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/$GOOGLE_CHROME"
URL_4K_VIDEO_DOWNLOADER="https://dl.4kdownload.com/app/$APP_4K_VIDEO_DOWNLOADER"
URL_4K_YOUTUBE_TOMP3="https://dl.4kdownload.com/app/$APP_4K_YOUTUBE_TOMP3"
URL_SIMPLE_NOTE="https://github.com/Automattic/simplenote-electron/releases/download/v1.15.1/$SIMPLE_NOTE"
URL_OPENCOMIC="https://github.com/ollm/OpenComic/releases/download/$OPENCOMIC"
URL_XNCONVERT="https://download.xnview.com/$XNCONVERT"

DIR_DOWNLOADS="$HOME/Downloads/Apps_DEB"

# ---------- DOWNLOAD DE PACOTES DEBS ---------- #
echo ""
echo -e $corYellow " --- Efetuando o download de pacotes DEBs --- \033[0m"
mkdir "$DIR_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIR_DOWNLOADS"
wget -c "$URL_SIMPLE_NOTE"         -P "$DIR_DOWNLOADS"
wget -c "$URL_4K_VIDEO_DOWNLOADER" -P "$DIR_DOWNLOADS"
wget -c "$URL_4K_YOUTUBE_TOMP3"    -P "$DIR_DOWNLOADS"
wget -c "$URL_OPENCOMIC"           -P "$DIR_DOWNLOADS"
wget -c "$URL_XNCONVERT"           -P "$DIR_DOWNLOADS"

# ----------- INSTALANDO PACOTES DEBS ----------- #
echo ""
echo -e $corGreen " --- Instalando pacotes DEBs --- \033[0m"
echo ${senha} | (sudo -S apt install $DIR_DOWNLOADS/*.deb -y)
echo ""
echo -e $corGreen " --- Pacotes DEBs instalados com sucesso! --- \033[0m"
echo ""

