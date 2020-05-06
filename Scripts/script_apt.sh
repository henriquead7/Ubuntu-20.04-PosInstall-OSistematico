#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: instala uma lista de pacotes via APT, além de adicionoar repositórios de terceiros e da comunidade.
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

# ---------- VARIÁVEIS DE AMBIENTE PPAS ---------- #
 
# URL_WINE_KEY="https://dl.winehq.org/wine-builds/winehq.key"
# URL_PPA_WINE="https://dl.winehq.org/wine-builds/ubuntu/"
# PPA_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"

PPA_LUTRIS="ppa:lutris-team/lutris"

# ---------- VARIÁVEIS DE AMBIENTE APPS ---------- #

# APPS FORA DA LISTA (Opcionais)
#  ratbagd
#  piper
#  ttf-mscorefonts-installer

APPS=(
  ubuntu-restricted-extras
  qrencode
  pdfmod
  language-pack-gnome-pt
  language-pack-pt-base
  simplescreenrecorder
  soundconverter
  gnome-tweaks
  chrome-gnome-shell
  dconf-editor
  zulucrypt-gui
  unrar
  p7zip-full
  p7zip
  guvcview
  winff
  openjdk-8-jdk
  psensor
  gnome-clocks
  gparted
  synaptic
  vlc
  virtualbox
  menulibre
  deepin-terminal
  deepin-screenshot
  deepin-deb-installer
  steam-installer
  steam-devices
  steam:i386
  wine
  winetricks
  lutris
  playonlinux
  jstest-gtk
  cpufrequtils
  libvulkan1
  libvulkan1:i386
  libgnutls30:i386
  libldap-2.4-2:i386
  libgpg-error0:i386
  libxml2:i386
  libasound2-plugins:i386
  libsdl2-2.0-0:i386
  libfreetype6:i386
  libdbus-1-3:i386
  libsqlite3-0:i386
)

# ---------- SUPORTE ARQUITETURA 32 BITS ---------- #
echo ""
echo -e $corYellow " --- Adicionando ou verificando suporte arquitetura 32 bits --- \033[0m"
echo ${senha} | (sudo -S dpkg --add-architecture i386)
echo ""

# ---------- HABILITANDO OS REPOSITÓRIOS UNIVERSE E MULTIVERSE ---------- #
echo ""
echo -e $corYellow " --- Adicionando repositórios de parceiros da Canonical --- \033[0m"
echo ${senha} | (sudo -S add-apt-repository universe && sudo -S add-apt-repository multiverse)
echo ""

# ---------- ADICIONANDO REPOSITÓRIOS DE TERCEIROS ---------- #
echo ""
echo -e $corYellow " --- Adicionando repositórios de terceiros --- \033[0m"
echo ${senha} | (sudo -S add-apt-repository "$PPA_LUTRIS" -y)
#sudo apt-add-repository "$PPA_LIBRATBAG" -y
#wget -nc "$URL_WINE_KEY"
#sudo apt-key add winehq.key
#echo ${senha} | (sudo apt-add-repository "deb $URL_PPA_WINE focal main")
echo ""

# ---------- REMOVER APPS VIA APT ---------- #
echo ""
echo -e $corRed " --- Removendo limitador de CPU do Ubuntu --- \033[0m"
echo ${senha} | (sudo -S apt remove irqbalance)
echo ""

# ---------- INSTALAR APPS VIA APT ---------- #

echo -e $corGreen " --- Instalando pacotes via APT --- \033[0m"

for nome_do_app in ${APPS[@]}; do
  if ! dpkg -l | grep -q $nome_do_app; then
    echo ${senha} | (sudo -S apt install "$nome_do_app" -y)
  else
    echo -e $corBlue "[PREVIAMENTE INSTALADO] - $nome_do_app \033[0m"
  fi
done

# REMOVER COMENTÁRIO NO CASO DA ADIÇÃO DO PPA WINE
#echo ${senha} | (sudo -S apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y)
echo ""
echo -e $corGreen " --- Instalação de pacotes via APT finalizada! --- \033[0m"
echo ""

