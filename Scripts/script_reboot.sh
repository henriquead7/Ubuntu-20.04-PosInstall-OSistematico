#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Reinicia o sistema por meio do utilitário Zenity.
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

echo -e $corYellow " --- FINALIZADO COM SUCESSO! REINICIE O SISTEMA PARA APLICAR TODAS ALTERAÇÕES --- \033[0m"

tempo_Reboot=30

for (( i=0 ; i <= $tempo_Reboot ; i++ )) do 
    echo "# Reiniciando em $[ $tempo_Reboot - $i ]..."
    echo $[ 100 * $i / $tempo_Reboot ]
    sleep 1
done | zenity  --progress --title="REBOOT AUTOMÁTICO"  \
    --window-icon=warning --width=500 --auto-close
if [ $? = 0 ] ; then
    echo ${senha} | (sudo -S shutdown -h now)
else 
    echo "Reinicie o mais rápido possível, só assim as mudanças serão aplicadas corretamente" 
fi

exit
