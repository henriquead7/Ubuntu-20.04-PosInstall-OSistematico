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

# ---------- REMOVER APPS VIA APT ---------- #
echo ""
echo -e $corRed " --- Removendo limitador de CPU do Ubuntu --- \033[0m"
echo ${senha} | (sudo -S apt remove irqbalance -y)
echo ""
echo -e $corRed " --- Removendo libreoffice APT --- \033[0m"
echo ${senha} | (sudo -S apt remove libreoffice -y)
echo ""

# ---------- REMOVER APPS EM SNAP ---------- #
echo ""
echo -e $corRed " --- Removendo Snap-store do Ubuntu --- \033[0m"
echo ${senha} | (sudo snap remove snap-store -y)

# Instalando novamente Snap Store, pois assim ela não gerenciará nada além de Snaps
echo ${senha} | (sudo snap install snap-store -y)

# ---------- MENSAGEM FINAL ---------- #
echo ""
echo -e $corGreen " --- Remoção de pacotes finalizada! --- \033[0m"
echo ""

