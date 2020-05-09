# Ubuntu-20.04-PosInstall-OSistematico
Script de pós-instalação do Ubuntu 20.04 LTS (GNOME) com diversas customizações, extensões e apps em variados formatos. Criado  por Henrique AD 'OSistemático'.



Este script é um projeto pessoal criado para sanar minhas necessidades ao efetuar a instalação do Ubuntu. Sendo elas:

* ***Atualização do sistema;***
* ***Instalação e Download de apps executáveis;***
* ***Instalação de apps e pacotes via APT;***
* ***Suporte a pacotes de arquitetura 32 BITS;***
* ***Instalação de pacotes e apps voltados à gamers;***
* ***Adição de repositórios de terceiros;***
* ***Download de apps em AppImage;***
* ***Instalação de apps em Snap;***
* ***Adição do Flathub e instalação de apps em Flatpak;***
* ***Instalação automátizada de extensões do GNOME-Shell;*** (Por enquanto você deve configurá-las depois de instaladas).
* ***Customizações visuais no Ubuntu.*** (Devido há algum bug do Ubuntu ou GNOME-Shell 3.36 o tema escuro do Ubuntu deve ser configurado via "Ajustes"/"gnome-tweaks").



![Ubuntu 20.04 LTS com GNOME-Shell personalizado](https://github.com/HenriqueAD7/Ubuntu-20.04-PosInstall-OSistematico/blob/master/Imagens_Apresenta%C3%A7%C3%A3o/imagem_GNOME_Shell.png)



## Requisitos e mais detalhes

O script faz uso do utilitário ***"zenity"*** (que desenha as caixas de dialogo em GTK+), logo o mesmo é requisito para seu funcionamento. O Ubuntu 20.04 LTS, na qual destina-se inicialmente o uso deste script, já acompanha por default o pacote. Caso vise utilizar em outro sistema, atente-se para este ponto.

Nem preciso dizer que conexão com internet é um requisito, outro ponto é que por default o script instala todo tipo de app (só não compilei nenhum app no processo). Todavia Snap, Flatpak e AppImage fazem parte do processo.

Existem diversos scripts dentro do diretório ***"Scripts"***, pois o arquivo ***"script_login.sh"*** chama o ***"script_menu.sh"*** ao digitar corretamente a senha de ***SUDO***, que consequentemente recorre aos demais scripts efetuando assim suas funções.

Outros diretórios são de extrema importância, sem eles o script não funcionará de forma correta. Então, preserve a hierarquia e estrutura dos diretórios.

***Utilize o script SEM SUDO***, não existe a necessidade do uso via Root ou com o comando ```"sudo ./script_login.sh"```. 



## Customização/alteração do script

Todo o script está comentado, facilitando a modificação, subtração ou adição de recursos ou pacotes.

Usuários do ***Pop_OS!*** Podem utilizar o script alterando poucos detalhes, como:
* Remover a adição do PPA do Lutris;
* Adicionar no script que automatiza a instalação de extensões do GNOME-Shell, a Dash-to-Dock. Ou descartar o uso do script que customiza a extensão Ubuntu Dock (Dash-to-Dock);
* Remover no script que instala Flatpaks a adição do repositório Flathub;
* Remover ou comentar no ***"script_remove_pacotes.sh"*** o trecho em que os Snaps são utilizados;
* Caso queira utilizar Snaps, será necessário instalar previamente o pacote ***"snapd"*** no script que instala pacotes via APT.



## Executando o script de pós-instalação

Antes de executar veja se os scripts possuem as devidas permissões de execução. 

Estes comandos podem ser utilizados, caso não queira conferir um a um, dando a permissão de execução aos arquivos. Note que mais uma vez ***não é nescessário o uso do SUDO***.

```
chmod +x script_login.sh
```
```
chmod +x -R * Scripts/
```

Conforme mencionado anteriormente, não existe a necessidade de executar logado como Root. A construção deste script foi pensada no contexto de um "usuário comum" que em alguns momentos recebe os poderes de "super usuário". Assim sendo, sua senha será solicitada ao executar o arquivo no terminal ```"./script_login.sh"``` (sem as aspas, obviamente).

![Demonstração do script em ação](https://github.com/HenriqueAD7/Ubuntu-20.04-PosInstall-OSistematico/blob/master/Imagens_Apresenta%C3%A7%C3%A3o/imagem_apresenta%C3%A7%C3%A3o.gif)

Se por algum motivo usou anteriormente o terminal como Root ou fez uso do comando SUDO. ***Peço que feche o terminal e abra o mesmo novamente, e só então execute o script de pós-instalação***.



## O que cada categoria do script faz?

Ao todo são 14 categorias, você pode fazer todo o processo com apenas uma opção ou customizar o pós-instalação do sistema utilizando cada uma separdamente.

* ***ATUALIZAR***      - Atualiza os pacotes do sistema via APT (Antes disso remove alguns pacotes);
* ***APT/PPA***        - Adiciona repositórios de terceiros, instala pacotes via APT;
* ***DEBS***           - Baixa e instala pacotes ".DEB";
* ***EXECUTÁVEIS***    - Baixa arquivos executáveis e os adiciona em seus respectivos diretórios na $HOME;
* ***APPIMAGES***      - Baixa apps no formato AppImage;
* ***FLATPAKS***       - Adiciona o repositório Flathub no sistema e instala apps e runtimes Flatpak;
* ***SNAPS***          - Instala apps no formato Snap;
* ***UBUNTU DOCK***    - Customiza o comportamento da Ubuntu Dock (Dash-to-Dock);
* ***GNOME EXTENSÕES*** - Instala extensões, previamente configuradas, no GNOME-Shell;
* ***VISUAL UBUNTU*** - Customiza o visual do Ubuntu como, habilita o tema dark, altera o cursor do mouse etc;
* ***UPDATE+LIMPEZA*** - Atualiza os pacotes do sistema via APT e limpa seus resquícios;
* ***ORGANIZAR PASTAS MENU GNOME CATEGORIAS*** - Organiza as pastas do Shell/menu (AppFolder) em categorias;
* ***ORGANIZAR PASTAS MENU GNOME AD*** - Organiza as pastas do Shell/menu (AppFolder) como utilizo geralmente;
* ***TODAS OPÇÕES AD*** - Executa todas as opções anteriores, salve resguardo as "duplicadas que não tenham AD" no nome.

***OBS.:*** A opção ***VISUAL UBUNTU** precisa previamente que a extensão ***"User Themes"*** esteja instalada. Entretanto a anterior, ***"GNOME EXTENSÕES"***, instala tal pendência. Este é o requisito para aplicar o tema dark no shell do Ubuntu. Porém, devido algum bug do Ubuntu 20.04 LTS ou do GNOME-Shell 3.36 (ainda não testei em outros sistemas) o comando utilizado para trocar o tema do shell não está funcionando. Faça via GNOME Tweaks/"Ajustes".

Outra informação é que no Ubuntu 20.04 LTS, no momento em que escrevo isso, a função de pastas de apps (Appfoldes) no menu do GNOME-Shell eventualmente trava o sistema durante seu uso prolongado ou constante. Tal erro ocorre devido um bug da extensão Ubuntu Dock. Seja em VM ou máquina física, tal bug esteve presente.



## Considere apoioar o projeto OSistemático

[Apoia.se](https://apoia.se/osistematico) |
[Youtube](https://www.youtube.com/OSistematico) |
[Site](http://www.osistematico.com.br/) |
[Twitter](https://twitter.com/henriquead7)

***Obrigado pela atenção e apoio de todos, SISTEMATICAMENTE!***


