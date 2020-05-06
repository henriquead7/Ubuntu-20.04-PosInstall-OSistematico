#!/usr/bin/env bash
# autor: HenriqueAD <www.osistematico.com.br> <youtube.com/OSistematico>
# descrição: Menu via utilitário Zenity, para acessar diversas funções em váriados scripts.
# version: 1.0
# licença: MIT License

#Pega o parametro passado pelo script_login
senha="$1"

titulo="Menu Principal - Autor: HenriqueAD 'OSistemático'"
prompt="                                              PÓS-INSTALAÇÃO UBUNTU"
options=("[00] --- ATUALIZAR"                        "[01] --- APT/PPA" 
         "[02] --- DEBS"                             "[03] --- EXECUTÁVEIS" 
         "[04] --- APPIMAGES"                        "[05] --- FLATPAKS" 
         "[06] --- SNAPS"                            "[07] --- UBUNTU DOCK" 
         "[08] --- GNOME EXTENSÕES"                  "[09] --- VISUAL UBUNTU"
         "[10] --- UPDADTE + LIMPEZA"                "[11] --- ORGANIZAR PASTAS MENU GNOME 'CATEGORIAS'"
         "[12] --- ORGANIZAR PASTAS MENU GNOME 'AD'" "[13] --- TODAS OPÇÕES 'AD'" )

CAMINHO_SCRIPTS="Scripts"

while opt=$(zenity --title="$titulo" --text="$prompt" --list --width=500 --height=410  \
                   --column="Opções" --hide-header "${options[@]}"); do
    
    case "$opt" in

    #ATUALIZAR
    "${options[0]}" ) source $CAMINHO_SCRIPTS/script_apt_remove_travas.sh "$senha" 
                      source $CAMINHO_SCRIPTS/script_atualizar.sh "$senha" 
     ;;
     
    #APT/PPA
    "${options[1]}" ) source $CAMINHO_SCRIPTS/script_apt.sh "$senha"
     ;;

     #DEBS
    "${options[2]}" ) source $CAMINHO_SCRIPTS/script_debs.sh "$senha"
     ;;

     #EXECUTÁVEIS
    "${options[3]}" ) source $CAMINHO_SCRIPTS/script_executaveis.sh "$senha"
     ;;
    
     #APPIMAGES
    "${options[4]}" ) source $CAMINHO_SCRIPTS/script_appimages.sh
     ;;
    
     #FLATPAKS
    "${options[5]}" ) source $CAMINHO_SCRIPTS/script_flatpaks.sh
     ;;

     #SNAPS
    "${options[6]}" ) source $CAMINHO_SCRIPTS/script_snaps.sh "$senha"
     ;;

     #UBUNTU DOCK
    "${options[7]}" ) source $CAMINHO_SCRIPTS/script_ubuntu_dock.sh
     ;;

     #GNOME EXTENSÕES
    "${options[8]}" ) source $CAMINHO_SCRIPTS/script_extensoes_gnome_shell.sh
     ;;
 
     #VISUAL UBUNTU
    "${options[9]}" ) source $CAMINHO_SCRIPTS/script_visual_ubuntu.sh
                      source $CAMINHO_SCRIPTS/script_modelos.sh
                      source $CAMINHO_SCRIPTS/script_nautilus_compactador.sh
     ;;

     #UPDADTE + LIMPEZA
    "${options[10]}" ) source $CAMINHO_SCRIPTS/script_updateLimpeza.sh "$senha"
     ;;

     #GNOME MENU CATEGORIAS
    "${options[11]}" ) source $CAMINHO_SCRIPTS/script_appfolder_categorias.sh
     ;;

     #GNOME MENU PERSONALIZADO AD
    "${options[12]}" ) source $CAMINHO_SCRIPTS/script_appfolder.sh
     ;;

     #TODAS OPÇÕES
    "${options[13]}" ) source $CAMINHO_SCRIPTS/script_apt_remove_travas.sh "$senha" 
                       source $CAMINHO_SCRIPTS/script_atualizar.sh "$senha"
                       source $CAMINHO_SCRIPTS/script_apt.sh "$senha"
                       source $CAMINHO_SCRIPTS/script_debs.sh "$senha"
                       source $CAMINHO_SCRIPTS/script_executaveis.sh "$senha" 
                       source $CAMINHO_SCRIPTS/script_appimages.sh
                       source $CAMINHO_SCRIPTS/script_flatpaks.sh
                       source $CAMINHO_SCRIPTS/script_snaps.sh "$senha"
                       source $CAMINHO_SCRIPTS/script_ubuntu_dock.sh
                       source $CAMINHO_SCRIPTS/script_extensoes_gnome_shell.sh
                       source $CAMINHO_SCRIPTS/script_visual_ubuntu.sh
                       source $CAMINHO_SCRIPTS/script_modelos.sh
                       source $CAMINHO_SCRIPTS/script_nautilus_compactador.sh
                       source $CAMINHO_SCRIPTS/script_updateLimpeza.sh "$senha"
	               source $CAMINHO_SCRIPTS/script_appfolder.sh
                       source $CAMINHO_SCRIPTS/script_reboot.sh "$senha"
     ;;

    *) zenity --error --text="Opção inválida!" --width=150 --height=100;;
    esac

done

exit
