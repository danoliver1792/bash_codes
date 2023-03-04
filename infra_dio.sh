# indo para o diretório raíz
cd /

# vai forçar a exclusão do diretório
rm -Rf /adm/
rm -Rf /Mariana/
rm -Rf /Textos/
rm -Rf /ven/
ls -l

# verificando e excluindo os usuários
cat /etc/passwd
userdel -r maisa
userdel -r debora
userdel -r rodrigo
userdel -r mariana
userdel -r guest1
userdel -r guest2
userdel -r guest3
userdel -r guest10
userdel -r guest11
userdel -r guest12
userdel -r guest13

cat /etc/passwd
userdel -r guest
userdel -r joao

# verificando e excluindo os grupos
groupdel GRP_ADM
groupdel GRP_VEN

# criando os diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# criando os grupos de usuarios
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# criando os usuarios e adicionando aos grupos
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd jose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Seha123) -G GRP_SEC

# especificando permissões dos diretórios 
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
