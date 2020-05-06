#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Organiza os aplicativos em pastas no menu do GNOME-Shell por categorias de forma genérica.
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


gsettings set org.gnome.desktop.app-folders folder-children "['Acessórios', 'Web-Apps', 'Games', 'Gráficos', 'internet', 'office', 'Desenvolvimento', 'Multimídia', 'Ferramentas', 'Wine']"

#Acessórios
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Acessórios/ name "Acessórios"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Acessórios/ categories "['Utility']"

#Web Apps
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Web-Apps/ name "Web Apps"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Web-Apps/ categories "['chrome-apps']"

#Games
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Games/ name "Games"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Games/ categories "['Game']"

#Gráficos
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Gráficos/ name "Gráficos"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Gráficos/ categories "['Graphics']"

#Internet
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Internet/ name "Internet"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Internet/ categories "['Network', 'WebBrowser', 'Email']"

#Office
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Office/ name "Office"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Office/ categories "['Office']"

#Desenvolvimento
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Desenvolvimento/ name "Desenvolvimento"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Desenvolvimento/ categories "['Development']"

#Multtimídia
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Multimídia/ name "Multimídia"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Multimídia/ categories "['AudioVideo', 'Audio', 'Video']"

#Ferramentas
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Ferramentas/ name "Ferramentas"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Ferramentas/ categories "['System', 'Settings', 'Accessibility']"

#Wine
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Wine/ name "Wine"
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Wine/ categories "['Wine', 'X-Wine', 'Wine-Programs-Accessories']"
 
echo ""
echo -e $corYellow " --- Apps organizados em pastas no menu! --- \033[0m"
echo ""
echo ""

