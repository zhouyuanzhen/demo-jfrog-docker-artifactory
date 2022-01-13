FROM caddy:alpine

RUN mkdir -p /srv/caddy
COPY Caddyfile /etc/caddy/Caddyfile
COPY index.html /srv/caddy/
