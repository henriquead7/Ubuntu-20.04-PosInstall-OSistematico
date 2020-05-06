#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Altera o comportamento da Ubuntu Dock e faz pequenas alterações no GNOME-Shell
# version: 1.0
# licença: MIT License

# ---------- CORES PARA MELHOR VISUALIZAÇÃO ---------- #

export corGreen="\033[1;32m" #Instalação VERDE
export corBlue="\033[1;34m" #Atualização AZUL
export corRed="\033[1;31m" #Remoção VERMELHO
export corGrey="\033[40;1;37m" #CINZA
export corYellow="\033[1;33m" #AMARELO


# ----------------------------- MODIFICANDO A UBUNTU DOCK ----------------------------- #
echo ""
echo -e $corBlue " --- Customizando a Ubuntu Dock --- \033[0m"
echo ""

# Minimiza e restaura a janela ao clicar sobre o apps na dock, e abre o Overview quando existe mais de 1 do mesmo app
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'

# Ativa a opacidade quando a janela está máximizada ou não
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'

# Permite customizar as transparências da dock
gsettings set org.gnome.shell.extensions.dash-to-dock customize-alphas 'true'

# Deixa a dock totalmente escura ao maximizar o app
gsettings set org.gnome.shell.extensions.dash-to-dock max-alpha 1

# Deixa a dock com opacidade 80% ao não ter apps maximizados (0.8 fica legal também)
gsettings set org.gnome.shell.extensions.dash-to-dock min-alpha 0.4

# Seta o tamanho dos ícones na dock em 28 pixels
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 28

# SETAR OS APPS FAVORITOS NA DOCK
gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gimp.GIMP.desktop', 'deepin-terminal.desktop', 'stacer.desktop', 'gnome-system-monitor.desktop', 'org.gnome.clocks.desktop', 'psensor.desktop', 'org.gnome.tweaks.desktop', 'gnome-control-center.desktop']"

echo ""
echo -e $corBlue " --- Ubuntu Dock pronta! --- \033[0m"
echo ""

