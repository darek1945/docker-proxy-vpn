FROM alpine:latest

RUN apk update && apk add openvpn dante-server supervisor

RUN mkdir -p /etc/dante /etc/openvpn /var/log/supervisor

COPY dante.conf /etc/dante/dante.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 1080

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]