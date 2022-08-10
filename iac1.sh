#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /sec
mkdir /ven

echo "Diretorios criados!"

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Grupos criados!"

echo "Criando usuarios..."

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Tereza" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "Joao Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Debora Dabura" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd Tiago -c "Tiago Sousa" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

useradd josefina -c "Josefina Castro" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd john -c "John Smith" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd ane -c "Ane Moura" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

echo "Usuarios criados!"

echo "Atribuindo as permissoes aos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "Permissoes atribuidas!"

echo "Finalizado!"
