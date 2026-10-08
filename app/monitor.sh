#!/bin/bash
echo "======================================"
echo "       MONITORAMENTO DO SERVIDOR"
echo "======================================"

echo
echo "HOSTNAME"
echo "--------------------------------------"
hostname

echo
echo "DATA E HORA"
echo "--------------------------------------"
date

echo
echo "MEMÓRIA"
echo "--------------------------------------"
free -h

echo
echo "ARMAZENAMENTO"
echo "--------------------------------------"
df -h /

echo
echo "PROCESSOS"
echo "--------------------------------------"
ps aux --sort=-%cpu | head -6

echo
echo "QUANTIDADE DE PROCESSOS"
echo "--------------------------------------"
ps aux | wc -l

echo
echo "DOCKER"
echo "--------------------------------------"

if command -v docker >/dev/null 2>&1; then
    docker --version

    echo
    echo "CONTAINERS ATIVOS"
    echo "--------------------------------------"
    docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
else
    echo "Docker CLI não disponível neste ambiente."
fi

echo
echo "REDE"
echo "--------------------------------------"
hostname -I

echo
echo "======================================"
echo "       FIM DO MONITORAMENTO"
echo "======================================"
