# Automatically dockerize app with letscript
On investigation, currently, this project does not work.

# Usage

- Change your domain main in `init.yml`, `renew.yml`, `app.yml`.
- There are 3 steps in total
  + Issue initial SSL cert: `docker-compose -f init.yml`
  + Run the app: `docker-compose -f app.yml`. Browse https://example.com/index.html to check if SSL is configured properly.
  + Reissue SSL cert when expired: `docker-compose -f renew.yml`
