#!/bin/bash
#permisos y propietarios recursivos
sudo chown -R p1c1_2026_u1:p1c1_2026_g1 /datos/
sudo chmod -R 750 /datos/

#archivo de validación usuario p1c1_2026_u1
sudo -u p1c1_2026_u1 bash -c 'whoami > /datos/validar1.txt'

