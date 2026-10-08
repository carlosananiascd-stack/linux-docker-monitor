FROM ubuntu:24.04

WORKDIR /app

COPY app/monitor.sh .

RUN chmod +x monitor.sh

CMD ["./monitor.sh"]
