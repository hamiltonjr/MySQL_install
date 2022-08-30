#!/bin/bash
echo 'Espero que esteja rodando esse script como root!'

echo 'Atualizando o sistema...'
apt-get update -y
apt-get upgrade -y
echo ''

echo 'Instalando o MySQ server...'
apt-get install mysql-server -y
echo ''

echo 'Instalando o MySQ client...'
apt-get install mysql-client -y
echo ''

echo 'Verificando status..'
systemctl status mysql.service
echo ''

echo 'Atualizando o sistema novamente...'
apt-get update -y
apt-get upgrade -y
echo ''

echo 'Reiniciando...'
reboot

