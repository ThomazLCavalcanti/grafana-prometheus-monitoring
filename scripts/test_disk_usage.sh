#!/bin/bash
# Script para simular uso de disco com arquivos grandes
# Uso: ./test_disk_usage.sh [ARQUIVOS] [TAMANHO_MB]

NUM_FILES=${1:-5}     # Quantidade de arquivos
FILE_SIZE=${2:-100}   # Tamanho de cada arquivo em MB

echo "Criando $NUM_FILES arquivos de $FILE_SIZE MB..."

mkdir -p /tmp/teste_disk_usage
for i in $(seq 1 $NUM_FILES); do
    dd if=/dev/zero of=/tmp/teste_disk_usage/fakefile_$i bs=1M count=$FILE_SIZE status=none
done

echo "Arquivos criados em /tmp/teste_disk_usage/"
read -p "Pressione ENTER para apagar os arquivos e liberar o espaço..."

rm -rf /tmp/teste_disk_usage
