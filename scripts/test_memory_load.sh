#!/bin/bash
# Script para simular carga de memória
# Uso: ./test_memory_load.sh [MB]

MEM_MB=${1:-500}  # Default: 500MB

echo "Alocando ${MEM_MB}MB de memória..."
python3 -c "a = ' ' * 1024 * 1024 * ${MEM_MB}; input('Pressione ENTER para liberar memória...')"
