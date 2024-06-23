FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y nfs-kernel-server && \
    mkdir -p /exports && \
    chmod 777 /exports

COPY exports /etc/exports

EXPOSE 2049 111

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]