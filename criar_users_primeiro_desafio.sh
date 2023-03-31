echo "Criando diretório do primeiro desafio..."

mkdir /publico /adm /ven /sec

echo "Criando grupos do primeiro desafio..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do primeiro desafio..."

useradd carlos -c "Pertence ao Grupo GRP_ADM" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd abc@123)

useradd maria -c "Pertence ao Grupo GRP_ADM" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd abc@123)

useradd joao -c "Pertence ao Grupo GRP_ADM" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd abc@123)

useradd debora -c "Pertence ao Grupo GRP_VEN" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd abc@123)

useradd sebastiana -c "Pertence ao Grupo GRP_VEN" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd abc@123)

useradd roberto -c "Pertence ao Grupo GRP_VEN" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd abc@123)

useradd josefina -c "Pertence ao Grupo GRP_SEC" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd abc@123)

useradd amanda -c "Pertence ao Grupo GRP_SEC" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd abc@123)

useradd rogerio -c "Pertence ao Grupo GRP_SEC" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd abc@123)

echo "Todos os usuários terão permissão total dentro do diretório público..."

chmod 747 /publico

echo "Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem..."

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

