#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Organiza os aplicativos em pastas no menu do GNOME-Shell, ao meu gosto.
# version: 1.0
# licença: MIT License

# ---------- CORES PARA MELHOR VISUALIZAÇÃO ---------- #

export corGreen="\033[1;32m" #Instalação VERDE
export corBlue="\033[1;34m" #Atualização AZUL
export corRed="\033[1;31m" #Remoção VERMELHO
export corGrey="\033[40;1;37m" #CINZA
export corYellow="\033[1;33m" #AMARELO

# ---------- ORGANIZANDO OS APPS EM PASTAS NO MENU/APPGRID GNOME-SHELL ---------- #
echo ""
echo -e $corYellow " --- Organizando os apps no menu do GNOME-Shell --- \033[0m"
echo ""

# COMANDO PARA DESFAZER A ORAGANIZAÇÃO DAS PASTAS
gsettings set org.gnome.desktop.app-folders folder-children "[]"
gsettings set org.gnome.desktop.app-folders folder-children "['Audio-Visual', 'Configurações', 'Conversores', 'Deepin-Apps', 'Downloads', 'Ferramentas', 'Games', 'Hardware', 'Leitura', 'Loja-Apps',  'Mensagens', 'Multimídia', 'Office', 'Record', 'Utilitários', 'Web-Apps', 'Wine']"

#Audio Visual
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Audio-Visual/ name "Audio Visual"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Audio-Visual/ apps "['opentoonz-morevna_opentoonz-morevna.desktop', 'org.gimp.GIMP.desktop', 'org.kde.kdenlive.desktop', 'org.inkscape.Inkscape.desktop', 'org.blender.Blender.desktop', 'org.audacityteam.Audacity.desktop']"

#Configurações
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Configurações/ name "Configurações"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Configurações/ apps "['org.gnome.tweaks.desktop', 'com.github.tchx84.Flatseal.desktop', 'org.gnome.Extensions.desktop', 'gnome-control-center.desktop', 'ca.desrt.dconf-editor.desktop', 'menulibre.desktop', 'gnome-session-properties.desktop', 'software-properties-livepatch.desktop']"

#Conversores
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Conversores/ name "Conversores"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Conversores/ apps "['fr.handbrake.ghb.desktop', 'winff.desktop', 'XnConvert.desktop', 'soundconverter.desktop']"

#Deepin Apps
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Deepin-Apps/ name "Deepin Apps"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Deepin-Apps/ apps "['deepin-screenshot.desktop', 'deepin-terminal.desktop', 'deepin-deb-installer.desktop']"

#Downloads
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Downloads/ name "Downloads"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Downloads/ apps "['4kvideodownloader.desktop', '4kyoutubetomp3.desktop', 'org.jdownloader.JDownloader.desktop', 'transmission-gtk.desktop']"

#Ferramentas
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Ferramentas/ name "Ferramentas"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Ferramentas/ apps "['org.gnome.Calendar.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.clocks.desktop', 'org.gnome.FileRoller.desktop', 'usb-creator-gtk.desktop', 'org.gnome.font-viewer.desktop', 'org.gabmus.hydrapaper.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.Weather.desktop', 'shotwell.desktop', 'org.gnome.eog.desktop', 'org.gnome.DejaDup.desktop', 'org.gnome.Screenshot.desktop', 'gparted.desktop', 'zulucrypt-gui.desktop']"

#Games
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Games/ name "Games"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Games/ apps "['net.lutris.Lutris.desktop', 'io.mgba.mGBA.desktop', 'jstest-gtk.desktop', 'org.citra.citra-nightly.desktop', 'org.DolphinEmu.dolphin-emu.desktop', 'steam.desktop', 'net.pcsx2.PCSX2.desktop', 'org.ppsspp.PPSSPP.desktop', 'org.gnome.Mahjongg.desktop', 'sol.desktop', 'org.gnome.Sudoku.desktop', 'org.gnome.Mines.desktop']"

#Hardware
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Hardware/ name "Hardware"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Hardware/ apps "['guvcview.desktop', 'gnome-system-monitor.desktop', 'stacer.desktop', 'psensor.desktop', 'software-properties-drivers.desktop', 'org.gnome.Cheese.desktop', 'com.leinardi.gst.desktop', 'com.leinardi.gwe.desktop']"

#Leitura
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Leitura/ name "Leitura"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Leitura/ apps "['io.github.hakuneko.HakuNeko.desktop', 'info.febvre.Komikku.desktop', 'opencomic.desktop', 'org.gnome.Evince.desktop']"

#Loja e Apps
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Loja-Apps/ name "Loja e Apps"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Loja-Apps/ apps "['snap-store_snap-store.desktop', 'update-manager.desktop', 'org.gnome.Software.desktop', 'software-properties-gtk.desktop', 'synaptic.desktop']"

#Mensagens
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Mensagens/ name "Mensagens"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Mensagens/ apps "['thunderbird.desktop', 'discord_discord.desktop', 'telegramdesktop.desktop', 'org.gnome.Geary.desktop', 'com.slack.Slack.desktop']"

#Multimídia
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Multimídia/ name "Multimídia"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Multimídia/ apps "['org.gnome.Lollypop.desktop', 'rhythmbox.desktop', 'spotify_spotify.desktop', 'vlc.desktop', 'org.gnome.Totem.desktop']"

#Office
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Office/ name "Office"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Office/ apps "['org.libreoffice.LibreOffice.desktop', 'org.libreoffice.LibreOffice.base.desktop', 'libreoffice-calc.desktop', 'org.libreoffice.LibreOffice.calc.desktop', 'org.libreoffice.LibreOffice.draw.desktop', 'libreoffice-draw.desktop', 'libreoffice-impress.desktop', 'org.libreoffice.LibreOffice.impress.desktop', 'org.libreoffice.LibreOffice.math.desktop', 'libreoffice-writer.desktop', 'org.libreoffice.LibreOffice.writer.desktop', 'pdfmod.desktop', 'com.wps.Office.prometheus.desktop', 'com.wps.Office.pdf.desktop', 'com.wps.Office.wpp.desktop', 'com.wps.Office.et.desktop', 'com.wps.Office.wps.desktop', 'simple-scan.desktop', 'org.gnome.Todo.desktop']"

#Record
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Record/ name "Record"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Record/ apps "['com.obsproject.Studio.desktop', 'com.uploadedlobster.peek.desktop', 'simplescreenrecorder.desktop', 'obs-studio_obs-studio.desktop']"

#Utilitários
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Utilitários/ name "Utilitários"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Utilitários/ apps "['org.gnome.Logs.desktop', 'im-config.desktop', 'org.gnome.seahorse.Application.desktop', 'openjdk-8-policytool.desktop', 'org.gnome.Characters.desktop', 'gnome-language-selector.desktop', 'display-im6.q16.desktop', 'org.gnome.PowerStats.desktop', 'yelp.desktop', 'org.gnome.baobab.desktop']"

#Web Apps
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Web-Apps/ name "Web Apps"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Web-Apps/ categories "['chrome-apps']"

#Wine
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Wine/ name "Wine"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Wine/ apps "['winetricks.desktop', 'PlayOnLinux.desktop']"
 
echo ""
echo -e $corYellow " --- Apps organizados em pastas no menu! --- \033[0m"
echo ""
echo ""
