#!/bin/bash


USUARIO="p1c1_2026_u1"
GRUPO="p1c1_2026_g1"
CLAVE="clave1"

echo "=== Iniciando la creación del usuario ==="

sudo groupadd "$GRUPO"

sudo useradd -m -G "$GRUPO" "$USUARIO"

echo "$USUARIO:$CLAVE" | sudo chpasswd

echo "=== Usuario creado con éxito ==="
