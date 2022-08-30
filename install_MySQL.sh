#!/bin/bash
echo 'Espero que esteja rodando esse script como root!'

echo 'Atualizando o sistema...'
apt-get update
apt-get upgrade
echo ''

echo 'Instalando o MySQ server...'
apt-get install mysql-server -y
echo ''

echo 'Instalando o MySQ client...'
apt-get install mysql-client -y
echo ''

echo 'Atualizando o sistema novamente...'
apt-get update
apt-get upgrade
echo ''

echo 'Reiniciando...'
reboot

