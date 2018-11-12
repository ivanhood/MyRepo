FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  vsftpd \
  vim \
&& rm -rf /var/lib/apt/lists/*

COPY vsftpd.conf /etc/vsftpd.conf

COPY start.sh /root/start.sh

RUN mkdir -p /var/run/vsftpd/empty

EXPOSE 20 21 21100-21110

CMD ["/root/start.sh"]

