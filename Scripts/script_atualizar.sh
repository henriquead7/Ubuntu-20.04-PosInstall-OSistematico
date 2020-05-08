#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Atualiza o sistema via "APT".
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

# ---------- ATUALIZANDO O SISTEMA ---------- #
echo ""
echo -e $corBlue " --- Atualizando o sistema --- \033[0m"
echo ""
echo ${senha} | (sudo -S apt list --upgradable && sudo -S apt update -y && sudo -S apt dist-upgrade -y && sudo -S apt install -f && sudo -S apt autoremove -f -y && sudo -S apt autoclean -y)
echo ""
echo -e $corBlue " --- Sistema atualizado com sucesso! --- \033[0m"
echo ""
