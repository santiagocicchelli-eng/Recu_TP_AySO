#!/bin/bash

#Creacion del grupo u2 y copia de clave de u1
sudo groupadd p1c1_2026_Todos
sudo useradd -m -g p1c1_2026_Todos p1c1_2026_u2
sudo usermod -p $(sudo grep "p1c1_2026_u1:" /etc/shadow | cut -d: -f2) p1c1_2026_u2

#Agrgando u1 al grupo nuevo
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1

#Modificando grupo propietario y otorgarle permisos de escritura al grupo
sudo chgrp -R p1c1_2026_Todos /datos/
sudo chmod -R g+w /datos/

#Ajustando permisos 
sudo chmod o=x /datos/

#Agregando la salida de id ejecutada por u2 al archivo de validación
sudo -u p1c1_2026_u2 bash -c 'id >> /datos/validar1.txt'
