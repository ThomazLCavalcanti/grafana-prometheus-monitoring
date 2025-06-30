#!/bin/bash

# test_cpu_load.sh
# Script para gerar carga de CPU artificialmente

echo "[INFO] Iniciando carga de CPU (CTRL+C para encerrar)..."

# Usa múltiplos processos para gerar carga simultânea
for i in $(seq 1 "$(nproc)"); do
  yes > /dev/null &
done

# Captura o PID dos processos em background para encerrar depois
trap "echo '[INFO] Encerrando carga...'; kill 0" SIGINT SIGTERM

# Aguarda indefinidamente
wait
