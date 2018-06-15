FROM certbot/certbot
COPY init.sh /
COPY renew.sh /
WORKDIR /
ENV MY_DOMAIN_NAME=app.carstay.jp
VOLUME /etc/letsencrypt /var/lib/letsencrypt
EXPOSE 80 443
