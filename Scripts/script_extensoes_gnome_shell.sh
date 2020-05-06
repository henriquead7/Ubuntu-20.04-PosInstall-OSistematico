#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Instala diversas extensões, previamente configuradas, no GNOME-Shell.
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

#Acessa as extensões dentro da pasta "Gnome_Extensions", que deve estar no mesmo diretório do script
CAMINHO=$(head -n 1 $HOME/Caminho.txt)
DIR_EXTENSOES="Gnome_Extensions"

# Cada extensão foi baixada manualmente, testada em VM, configurada e adicionada ao diretório Gnome_"Extensions"

#OBS.: Os nomes dos arquivos mudam a cada nova versão baixada, caso for customizar posteriormente, lembre-se disso

# Blyr (default)
# NOME:blyryozoon.dev.gmail.com.v7.shell-extension.zip
# UUID:blyr@yozoon.dev.gmail.com
# SITE:https://extensions.gnome.org/extension/1251/blyr/

# CustomCorner (Com minhas configs)
# NOME:customcorner@eccheng.gitlab.com.v3.shell-extension.zip
# UUID:customcorner@eccheng.gitlab.com
# SITE:https://extensions.gnome.org/extension/1037/customcorner/

# GSConnect (default)
# NOME:gsconnectandyholmes.github.io.v37.shell-extension.zip
# UUID:gsconnect@andyholmes.github.io
# SITE:https://extensions.gnome.org/extension/1319/gsconnect/

# Impatience (default)
# NOME:impatiencegfxmonk.net.v15.shell-extension.zip
# UUID:impatience@gfxmonk.net
# SITE:https://extensions.gnome.org/extension/277/impatience/

# More columns in applications view (Com minhas configs)
# NOME:set-columnsmaestroschan.fr.v2.shell-extension.zip
# UUID:set-columns@maestroschan.fr
# SITE:https://extensions.gnome.org/extension/1305/more-columns-in-applications-view/

# OpenWeather (default/Adicione o endereço de onte vc mora)
# NOME:openweather-extensionjenslody.de.v102.shell-extension.zip
# UUID:openweather-extension@jenslody.de
# SITE:https://extensions.gnome.org/extension/750/openweather/

# Removable Drive Menu (default)
# NOME:drive-menugnome-shell-extensions.gcampax.github.com.v43.shell-extension.zip
# UUID:drive-menu@gnome-shell-extensions.gcampax.github.com
# SITE:https://extensions.gnome.org/extension/7/removable-drive-menu/

# Sound Input & Output Device Chooser (Com minhas configs)
# NOME:sound-output-device-chooserkgshank.net.v29.shell-extension.zip
# UUID:sound-output-device-chooser@kgshank.net
# SITE:https://extensions.gnome.org/extension/906/sound-output-device-chooser/

# Transparent Top Bar (Com minhas configs)
# NOME:transparent-top-barzhanghai.me.v6.shell-extension.zip
# UUID:transparent-top-bar@zhanghai.me
# SITE:https://extensions.gnome.org/extension/1708/transparent-top-bar/

# Unite (Com minhas configs)
# NOME:unitehardpixel.eu.v37.shell-extension.zip
# UUID:unite@hardpixel.eu
# SITE:https://extensions.gnome.org/extension/1287/unite/

# User Themes (default)
# NOME:user-themegnome-shell-extensions.gcampax.github.com.v40.shell-extension.zip
# UUID:user-theme@gnome-shell-extensions.gcampax.github.com
# SITE:https://extensions.gnome.org/extension/19/user-themes/

# WindowOverlay Icons (Com minhas configs)
# NOME:windowoverlay-iconssustmidown.centrum.cz.v34.shell-extension.zip
# UUID:windowoverlay-icons@sustmidown.centrum.cz
# SITE:https://extensions.gnome.org/extension/302/windowoverlay-icons/

# ------------------------------------------------------------------------------------

# Comando para saber a UUID do arquivo zip da extensão (deve ser feito prevemente de forma manual, não automatizei isso).
# unzip -c Diretorio_onde_esta_o_arquivo/nome_shhell_extension.zip

# Armazena em "array bidimencional" os NOMEs dos arquivos.zip das extensões e seus UUIDs
EXTENSAO_0=("blyryozoon.dev.gmail.com.v7.shell-extension.zip" 
            "blyr@yozoon.dev.gmail.com"
)            
EXTENSAO_1=("customcorner@eccheng.gitlab.com.v3.shell-extension.zip" 
            "customcorner@eccheng.gitlab.com"
)            
EXTENSAO_2=("gsconnectandyholmes.github.io.v37.shell-extension.zip" 
            "gsconnect@andyholmes.github.io"
)            
EXTENSAO_3=("impatiencegfxmonk.net.v15.shell-extension.zip" 
            "impatience@gfxmonk.net"
)           
EXTENSAO_4=("set-columnsmaestroschan.fr.v2.shell-extension.zip" 
            "set-columns@maestroschan.fr"
)            
EXTENSAO_5=("openweather-extensionjenslody.de.v102.shell-extension.zip" 
            "openweather-extension@jenslody.de"
)            
EXTENSAO_6=("drive-menugnome-shell-extensions.gcampax.github.com.v43.shell-extension.zip" 
            "drive-menu@gnome-shell-extensions.gcampax.github.com"
)            
EXTENSAO_7=("sound-output-device-chooserkgshank.net.v29.shell-extension.zip" 
            "sound-output-device-chooser@kgshank.net"
)            
EXTENSAO_8=("transparent-top-barzhanghai.me.v6.shell-extension.zip"
            "transparent-top-bar@zhanghai.me"
)
EXTENSAO_9=("unitehardpixel.eu.v37.shell-extension.zip" 
            "unite@hardpixel.eu"
)
EXTENSAO_10=("user-themegnome-shell-extensions.gcampax.github.com.v40.shell-extension.zip" 
             "user-theme@gnome-shell-extensions.gcampax.github.com"
)
EXTENSAO_11=("windowoverlay-iconssustmidown.centrum.cz.v34.shell-extension.zip" 
             "windowoverlay-icons@sustmidown.centrum.cz"
)

ARRAY_BIDIMENCIONAL=(
  EXTENSAO_0[@]
  EXTENSAO_1[@]
  EXTENSAO_2[@]
  EXTENSAO_3[@]
  EXTENSAO_4[@]
  EXTENSAO_5[@]
  EXTENSAO_6[@]
  EXTENSAO_7[@]
  EXTENSAO_8[@]
  EXTENSAO_9[@]
  EXTENSAO_10[@]
  EXTENSAO_11[@]
)

# Loop simulando um array bidimencional extraindo as extensões compactadas e adicioinando com nome correto no sistema, segundo o UUID
echo ""
echo -e $corGreen " --- Instalando as extensões no GNOME-Shell --- \033[0m"
CONTADOR=${#ARRAY_BIDIMENCIONAL[@]}
for ((i=0; i<$CONTADOR; i++))
do
  NOME_EXTENSAO=${!ARRAY_BIDIMENCIONAL[i]:0:1}
  UUID_EXTENSAO=${!ARRAY_BIDIMENCIONAL[i]:1:1}
  
echo "Instalando extensão: $NOME_EXTENSAO ID: $UUID_EXTENSAO"
  unzip -qo $CAMINHO/$DIR_EXTENSOES/$NOME_EXTENSAO -d ~/.local/share/gnome-shell/extensions/$UUID_EXTENSAO/
  gnome-extensions enable $UUID_EXTENSAO

done

rm $HOME/Caminho.txt

# gnome-shell -r & # Não feche o terminal [Melhor fazer isso manualmente, ou reiniciar o sistema]
echo ""
echo -e $corGreen " --- Extensões do GNOME-Shell configuradas com sucesso! --- \033[0m"
echo ""

