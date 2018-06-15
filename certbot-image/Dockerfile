FROM certbot/certbot
COPY ./init.sh /
COPY ./renew.sh /
VOLUME /etc/letsencrypt /var/lib/letsencrypt
EXPOSE 80 443
