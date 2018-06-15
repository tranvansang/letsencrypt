# Automatically dockerize app with letscript

# Usage

- There are 3 steps in total
  + Issue initial SSL cert: `docker-compose -f init.yml -e MY_DOMAIN_NAME=example.com`
  + Run the app: `docker-compose -f run.yml -e MY_DOMAIN_NAME=example.com`
  + Reissue SSL cert when expired: `docker-compose -f renew.yml -e MY_DOMAIN_NAME=example.com`
