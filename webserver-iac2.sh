#!/bin/bash

echo "Atualizando o servidor web..."

apt-get update
apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicacao..."

cd /tmp
wget https://github.com/jeanleles/jeanleles_portfolio/archive/refs/heads/main.zip
unzip main.zip
cd jeanleles_portfolio-main
cp -R * /var/www/html/
systemctl start apache2

echo "Tudo pronto!!! irruuuuuuu..."
