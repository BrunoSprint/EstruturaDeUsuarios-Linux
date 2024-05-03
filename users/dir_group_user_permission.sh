#!/bin/bash

# Criação de diretórios
echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criação de grupos de usuários
echo "Criando grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação de usuários
echo "Criando usuários"
useradd A -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd B -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd C -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd D -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd E -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd F -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd G -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd H -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd I -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


# Especificação de permissões dos diretórios
echo "Especificando permissões dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Atribuição de permissões
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

# Mensagem de conclusão
echo "Fim"
