FROM caddy:alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY site /srv
