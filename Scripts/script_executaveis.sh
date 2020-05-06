#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Efetua o download de diversos apps executáveis adicionando em pastas na home.
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

# ---------- VARIÁVEIS DE AMBIENTE APPS EXECUTÁVEIS ---------- #

SYNCTHING="syncthing-linux-amd64-v1.4.2.tar.gz"
TELEGRAM="tsetup.2.1.0.tar.xz"
MELONDS="melonDS_0.8.3_linux64.7z"

URL_SYNCTHING="https://github.com/syncthing/syncthing/releases/download/v1.4.2/$SYNCTHING"
URL_TELEGRAM="https://telegram.org/dl/desktop/linux/$TELEGRAM"
URL_MELONDS="http://melonds.kuribo64.net/downloads/$MELONDS"

DIR_EXEC="$HOME/Downloads/Apps_EXEC"

# ---------- DOWNLOAD DOS APPS EXECUTAVÉIS ---------- #
echo ""
echo -e $corYellow " --- Efetuando o download dos Apps Executáveis --- \033[0m"
mkdir "$DIR_EXEC"

wget -c "$URL_SYNCTHING"            -P "$DIR_EXEC"
wget -c "$URL_TELEGRAM"             -P "$DIR_EXEC"
wget -c "$URL_MELONDS"              -P "$DIR_EXEC"
echo ""

# ----------- EXTRAINDO APPS EXECUTÁVEIS EM SEUS DIRETÓRIOS ----------- #
echo ""
echo -e $corGreen " --- Extraindo Apps Executáveis --- \033[0m"

tar -vzxf $DIR_EXEC/$SYNCTHING -C $HOME
mv $HOME/syncthing-linux-amd64-v1.4.2 $HOME/Syncthing

tar -xvf $DIR_EXEC/$TELEGRAM -C $HOME

# melonDS permanece compactado no diretório em que foi baixado
echo ""
echo -e $corGreen " --- Apps Executáveis em suas pastas! --- \033[0m"
echo ""

