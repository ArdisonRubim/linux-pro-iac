#!/bin/bash
echo "###############################################################################"
echo "Criando os diretórios!"

mkdir /publico
mkdir /ven
mkdir /sec
mkdir /adm

echo "Criando grupos!"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando os usuários!"

useradd debora -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e debora
passwd -e sebastiana
passwd -e roberto

useradd carlos -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e carlos
passwd -e maria
passwd -e joao

useradd josefina -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Permissões de diretórios"

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 777 /publica
chmod 770 /ven
chmod 770 /adm
chmod 770 /sec

echo "Fim.."
echo "###############################################################################"
