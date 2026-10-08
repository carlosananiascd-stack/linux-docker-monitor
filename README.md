# Linux Docker Monitor

Projeto prático de monitoramento de um ambiente Linux utilizando Bash e Docker.

## Sobre o projeto

Este projeto executa um script Bash responsável por coletar informações básicas do sistema, como:

- Hostname
- Data e hora
- Memória RAM
- Armazenamento
- Processos em execução
- Quantidade de processos
- Status do Docker
- Containers ativos
- Informações de rede

O script pode ser executado diretamente no Linux ou dentro de um container Docker.

## Tecnologias utilizadas

- Linux
- Bash
- Docker
- Git
- GitHub
- Docker Compose

## Docker Compose

O projeto também pode ser executado utilizando Docker Compose.

Para iniciar o monitoramento:

```bash
docker compose up
```

Para verificar o container:

```bash
docker compose ps -a
```

Para visualizar os logs:

```bash
docker compose logs
```

Para encerrar os recursos criados pelo Compose:

```bash
docker compose down
```

## Estrutura do projeto

```text
linux-docker-monitor/
├── app/
│   └── monitor.sh
├── config/
├── logs/
│   └── .gitkeep
├── Dockerfile
├── .gitignore
└── README.md
```

## Exemplo de saída

```text
======================================
       MONITORAMENTO DO SERVIDOR
======================================

HOSTNAME
--------------------------------------
servidor-linux

MEMÓRIA
--------------------------------------
total        used        free
3.5Gi        624Mi       2.2Gi

ARMAZENAMENTO
--------------------------------------
Filesystem      Size  Used  Avail
/dev/sdd        1007G  4.1G  952G 
