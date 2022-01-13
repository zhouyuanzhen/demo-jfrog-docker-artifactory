# demo-jfrog-docker-artifactory
A demo for Jfrog Docker Artifactory integration

```shell

docker run --rm -p 8080:80 -v $PWD/index.html:/srv/caddy/index.html -v $PWD/Caddyfile:/etc/caddy/Caddyfile --name ex-caddy caddy:alpine

docker build -t caddytest:0.1 .


docker build -t zhouyuanzhen.jfrog.io/registry/caddy:0.1 .

docker login zhouyuanzhen.jfrog.io

docker push zhouyuanzhen.jfrog.io/registry/caddy:0.1

docker run --rm -p 8080:80 --name ex-caddy caddytest:0.1

```
