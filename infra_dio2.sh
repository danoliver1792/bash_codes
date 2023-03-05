apt-get update
apt-get upgrade -y

# instalação do apache2
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio

# copiando os arquivos extraidos para a pasta padrao do apache
cp -R * /var/www/html/´
