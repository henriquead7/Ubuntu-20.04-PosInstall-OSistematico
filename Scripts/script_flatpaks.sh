#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Instala uma lista de pacotes no formato Flatpak, além da adição do repositório Flathub.
# version: 1.0
# licença: MIT License

# ---------- CORES PARA MELHOR VISUALIZAÇÃO ---------- #

export corGreen="\033[1;32m" #Instalação VERDE
export corBlue="\033[1;34m" #Atualização AZUL
export corRed="\033[1;31m" #Remoção VERMELHO
export corGrey="\033[40;1;37m" #CINZA
export corYellow="\033[1;33m" #AMARELO

# ---------- VARIÁVEIS DE AMBIENTE APPS ---------- #

# FLATPAKS FORA DA LISTA (Opcionais)
#  org.gabmus.hydrapaper
#  org.gnome.Builder
#  com.leinardi.gwe
#  com.leinardi.gst
#  com.slack.Slack
#  com.github.micahflee.torbrowser-launcher
#  com.github.ztefn.haguichi
# OBS.: O emulador Citra está fora da lista, pois não se encontra dentro do Flathub. Contudo no ato da instalação ele é incluso.

FLATPAKS=(
  com.obsproject.Studio
  com.github.tchx84.Flatseal
  com.uploadedlobster.peek
  fr.handbrake.ghb
  com.wps.Office
  org.audacityteam.Audacity
  info.febvre.Komikku
  io.github.hakuneko.HakuNeko
  io.mgba.mGBA
  net.pcsx2.PCSX2
  org.DolphinEmu.dolphin-emu
  org.blender.Blender
  org.gimp.GIMP
  org.gnome.Lollypop
  org.jdownloader.JDownloader
  org.libreoffice.LibreOffice
  org.ppsspp.PPSSPP
  org.gtk.Gtk3theme.Yaru
  org.gtk.Gtk3theme.Yaru-dark
  org.gnome.Geary
  org.inkscape.Inkscape
  org.kde.kdenlive
)

# ---------- ADICIONANDO REPOSITÓRIO FLATHUB ----------- #
echo ""
echo -e $corYellow " --- Adicionando o repositório Flathub --- \033[0m"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo ""

# ---------- INSTALANDO FLATPAKS ----------- #
echo ""
echo -e $corGreen " --- Instalando Flatpaks --- \033[0m"
for nome_do_flatpak in ${FLATPAKS[@]}; do
    flatpak install flathub "$nome_do_flatpak" -y
done

flatpak install https://flatpak.citra-emu.org/citra-nightly.flatpakref -y # Flatpak fora do Flathub
echo ""
echo -e $corGreen " --- Flatpaks instalados com sucesso! --- \033[0m"
echo ""

