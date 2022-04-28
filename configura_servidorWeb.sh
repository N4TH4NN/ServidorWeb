#!/bin/bash


#Etapa 01
echo "1 - Update dos pacotes"
apt-get -y update

#Etapa 02
echo "2-  Instalando servidor web (apache)"
apt-get install -y apache2

#Etapa 03
echo "3 - Instalando o software wget para fazer downloads via link"
apt-get install -y wget

#Etapa 04
echo "4 - Fazendo download do arquivo no link"
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip

#Etapa 05
echo "5 - Instalando o software zip e unzip para descompactar arquivos .zip"
apt-get install -y zip unzip

#Etapa 06
echo "6 -  Descompactando arquivo e copiando os arquivos descompactados cv-resumido.html e style.css"
unzip 873219-690e1f604dc8ead2583589e1aee6f8a42040a035.zip

echo "7 - Apagundo o arquivo index.html que existe dentro do diretório /var/www/html/"
rm /var/www/html/
cs-resumido.html index.html
echo "8 - renomear o arquivo cv-resumido.html para index.html"


echo "Processo finalizado!"




