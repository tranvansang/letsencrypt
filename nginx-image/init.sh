echo build starting nginx config

echo replacing ___my.example.com___/$MY_DOMAIN_NAME
echo replacing ___LETSENCRYPT_IP___/$LETSENCRYPT_PORT_80_TCP_ADDR
echo replacing ___LETSENCRYPT_PORT___/$LETSENCRYPT_PORT_80_TCP_PORT
echo replacing ___APPLICATION_IP___/$APP_PORT_80_TCP_ADDR
echo replacing ___APPLICATION_PORT___/$APP_PORT_80_TCP_PORT

# Put your domain name into the nginx reverse proxy config.
sed -i "s/___my.example.com___/$MY_DOMAIN_NAME/g" /etc/nginx/nginx.conf
# Add your app's container IP and port into config
sed -i "s/___APPLICATION_IP___/$APP_PORT_80_TCP_ADDR/g" /etc/nginx/nginx.conf
sed -i "s/___APPLICATION_PORT___/$APP_PORT_80_TCP_PORT/g" /etc/nginx/nginx.conf
sed -i "s/___LETSENCRYPT_IP___/$LETSENCRYPT_PORT_80_TCP_ADDR/g" /etc/nginx/nginx.conf
sed -i "s/___LETSENCRYPT_PORT___/$LETSENCRYPT_PORT_80_TCP_PORT/g" /etc/nginx/nginx.conf

cat /etc/nginx/nginx.conf
echo .
echo Firing up nginx in the background.
nginx

