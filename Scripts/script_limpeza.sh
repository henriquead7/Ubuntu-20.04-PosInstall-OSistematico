#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Efetua limpeza do APT e atualiza pacotes em váriados formatos depois do pós-instalação.
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

# ----------------------------- PÓS-INSTALL ----------------------------- #

echo -e $corYellow " --- Efetuando o pós-instalação do sistema --- \033[0m"
echo ${senha} | (sudo -S apt list --upgradable && sudo -S apt update -y && sudo -S apt dist-upgrade -y && sudo -S apt install -f && sudo -S apt autoremove -y && sudo -S apt autoclean -y && sudo -S snap refresh && flatpak update -y)
