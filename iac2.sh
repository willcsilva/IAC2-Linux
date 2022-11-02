echo " Atualizando o S.O..."

apt-get update -y
apt-get upgrade -y

echo " Instalando Pacotes necessarios..."

apt-get install apache2 unzip -y

echo " Apagando arquivos existentes..."

cd /tmp
rm -rf linux-site-dio-main
rm -rf main.zip

echo " Download Projeto GitHub..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

echo "Movendo os arquivos para o diretorio do Apache..."

cp -R ./* /var/www/html/

echo "Iniciando o Servico Apache..."

systemctl enable apache2

systemctl start apache2

exit

