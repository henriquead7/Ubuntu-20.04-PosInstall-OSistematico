#!/bin/bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Valida se o usuário tem poderes SUDO e efetua login para acessar o menu via utilitário Zenity.
# version: 1.0
# licença: MIT License

# Diretório dos demais scripts, que deve estar no mesmo diretório do script pai
CAMINHO_SCRIPTS="Scripts"

# ---------- PEGA SENHA DE ROOT VIA INTERFACE GRÁGICA (Zenity) ---------- #

senha=$(
zenity --entry --title="PASSWORD" --text="Digite sua senha de root" --hide-text
)

# ---------- VERIFICA SE O USUÁRIO TEM PODERES DE SUDO ---------- #

# Tenta criar arquivo com poderes SUDO
echo ${senha} | (sudo -S pwd && sed 's/ /\\ /g' > $HOME/validadorAD.txt)

# Valida o comando acima, para seguir ou nãõ com o script
if [ $? != 0 ]; then

   zenity --title "Senha incorreta"  --error --text="O usuário não tem poderes SUDO!" --width=250 --height=100
   
   echo " "
   echo " "
   echo "A senha provavelmente estava incorreta"
   echo " "

else
   echo " "
   echo " "
   echo "Sucesso ao efetuar login"
   echo " "
   rm $HOME/validadorAD.txt
  
# Executa o script "script_menu.sh", passando a senha como parâmetro
  source $CAMINHO_SCRIPTS/script_menu.sh "$senha" 
fi

exit


exit
