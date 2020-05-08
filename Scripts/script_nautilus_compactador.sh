#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Adiciona no Nautilus, na sessão Scripts, a opção de chamar o gerenciador de arquivos compactados.
# version: 1.0
# licença: MIT License

# ---------- CORES PARA MELHOR VISUALIZAÇÃO ---------- #

export corGreen="\033[1;32m" #Instalação VERDE
export corBlue="\033[1;34m" #Atualização AZUL
export corRed="\033[1;31m" #Remoção VERMELHO
export corGrey="\033[40;1;37m" #CINZA
export corYellow="\033[1;33m" #AMARELO

DIR_SCRIPT="$HOME/.local/share/nautilus/scripts"

# AUMENTA AS POSSIBILIDADES DA COMPACTAÇÃO VIA ATALHO NO NAUTILUS
arquivo="$DIR_SCRIPT/Comprimir + opções"

if [ ! -f "$arquivo" ];then

  comando=$'#!/bin/bash\n'
  comando+=$'file-roller -d "$@"\n'
  
  echo "$comando" > "$arquivo"
  chmod +x "$arquivo"
fi

echo ""
echo -e $corGreen " --- Script de compressão adicionado ao Nautilus! --- \033[0m"
echo ""
