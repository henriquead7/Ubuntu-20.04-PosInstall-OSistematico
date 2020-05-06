#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Instala uma determinada lista de pacotes SNAP.
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

# ---------- VARIÁVEIS DE AMBIENTE APPS ---------- #

# OBS.: Não testei SNAPS com flags especiais, exemplo: "--classic"

SNAPS=(
  scrcpy
  spotify
  opentoonz-morevna
  discord 
)

# ---------- INSTALANDO SNAPS ----------- #
echo ""
echo -e $corGreen " --- Instalando Snaps --- \033[0m"
for nome_do_snap in ${SNAPS[@]}; do
    echo ${senha} | (sudo -S snap install "$nome_do_snap")
done
echo ""
echo -e $corGreen " --- Snaps instalados com sucesso! --- \033[0m"
echo ""

