FROM caddy:alpine

RUN mkdir -p /srv/caddy
COPY Caddyfile /etc/caddy/Caddyfile
COPY site /srv/caddy/
