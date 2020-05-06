#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Adiciona modelos de arquivos na pasta "Modelos" permitindo criar arquivos no menu de contexto do Nutilus.
# version: 1.0
# licença: MIT License

# ---------- CORES PARA MELHOR VISUALIZAÇÃO ---------- #

export corGreen="\033[1;32m" #Instalação VERDE
export corBlue="\033[1;34m" #Atualização AZUL
export corRed="\033[1;31m" #Remoção VERMELHO
export corGrey="\033[40;1;37m" #CINZA
export corYellow="\033[1;33m" #AMARELO

# ----------------------------- ADICIONANDO EXTENSÕES AO GNOME-SHELL ----------------------------- #

# Adiciona em arquivo TXT o local onde está sendo executado o scrip
pwd | sed 's/ /\\ /g' > $HOME/Caminho.txt

#Acessa os modelos para serem utilizados no Nautilus dentro da pasta "Modelos", que deve estar no mesmo diretório do script
CAMINHO=$(head -n 1 $HOME/Caminho.txt)
DIR_MODELOS="Modelos"
 
unzip $CAMINHO/$DIR_MODELOS/Modelos.zip -d $HOME/Modelos/


# gnome-shell -r & # Não feche o terminal [Melhor fazer isso manualmente, ou reiniciar o sistema]
echo ""
echo -e $corGreen " --- Arquivos modelos adicionados com sucesso! --- \033[0m"
echo ""

