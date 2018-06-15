certbot certonly --standalone -d $MY_DOMAIN_NAME --text --agree-tos --email support@$MY_DOMAIN_NAME --rsa-key-size 4096 --verbose --renew-by-default
