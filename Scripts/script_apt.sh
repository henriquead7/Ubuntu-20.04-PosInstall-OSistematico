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
#  ttf-mscorefonts-installer [não adicionar em APPS,  pois solicita confirmação]
#  ubuntu-restricted-extras  [não adicionar em APPS,  pois solicita confirmação]
#  vulkan-utils
#  virtualbox

# OBS.: Caso não queira instalar a GNOME Software, que suportará Flatpaks, retire ela e o plugin do Flatpak da lista. 
# Além de comentar no "script_remove_pacotes" o código que remove/reinstala a Snap Store em Snap. 

APPS=(
  flatpak
  gnome-software
  gnome-software-plugin-flatpak
  transmission-gtk
  libvulkan1
  vulkan-utils
  mesa-vulkan-drivers
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
  menulibre
  deepin-terminal
  deepin-screenshot
  deepin-deb-installer
  steam-installer
  steam-devices
  steam
  wine
  winetricks
  lutris
  playonlinux
  jstest-gtk
  cpufrequtils
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

# ---------- INSTALAR APPS VIA APT ---------- #

echo -e $corGreen " --- Instalando pacotes via APT --- \033[0m"

for nome_do_app in ${APPS[@]}; do
  if ! dpkg -l | grep -q $nome_do_app; then
    echo ${senha} | (sudo -S apt install "$nome_do_app" -y)
  else
    echo -e $corBlue "[PREVIAMENTE INSTALADO] - $nome_do_app \033[0m"
  fi
done

# Instala o pacote sem as fontes Microsoft
echo ${senha} | (sudo -S apt --no-install-recommends install ubuntu-restricted-extras -y)

# REMOVER COMENTÁRIO NO CASO DA ADIÇÃO DO PPA WINE
#echo ${senha} | (sudo -S apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y)
echo ""
echo -e $corGreen " --- Instalação de pacotes via APT finalizada! --- \033[0m"
echo ""
