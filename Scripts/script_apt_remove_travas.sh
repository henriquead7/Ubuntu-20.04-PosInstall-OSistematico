#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Remove possivéis travas no APT.
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


# ---------- REMOVENDO TRAVAS NO APT ---------- #
echo ""
echo -e $corYellow " --- Removendo possíveis travas do APT --- \033[0m"
echo ${senha} | (sudo -S rm /var/lib/apt/lists/lock && sudo -S rm /var/cache/apt/archives/lock && sudo -S rm /var/lib/dpkg/lock*)

echo ${senha} | (sudo -S dpkg --configure -a && sudo -S apt update -y)
echo ""

