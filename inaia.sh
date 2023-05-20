#!/bin/bash

echo "criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /seg

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEG

echo "criando usuário..."

useradd ines -m -c "Maria Inês" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_ADM
useradd sergio -m -c "Sergio Cezario JR" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_ADM
useradd otavio -m -c "Otavio Cezario" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_ADM

useradd ester -m -c "Ester Cezario" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_VEN
useradd gabriel -m -c "Gabriel Cezario" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_VEN
useradd sarah -m -c "Sarah Cezario" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_VEN

useradd rafael -m -c "Rafael Cezario" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_SEG
useradd fernando -m -c "Fernando Cezario" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_SEG
useradd elisa -m -c "Elisa Cezario" -s /bin/bash -p $(openssl passwd -crypt Hailee) -G GRP_SEG

echo "especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEG /seg

chmod 770 /adm
chmod 770 /ven
chmod 770 /seg
chmod 777 /publico

echo "Encerrado..."
