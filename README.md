# demo-jfrog-docker-artifactory
A demo for Jfrog Docker Artifactory integration. When new commit be pushed or merged to main branch will trigger the GitHub Action workflow which will build the latest docker image and push to JFrog Artifactory registry.

## QuickStart

```shell

make all

make clean
```

## Debug

```shell

docker run --rm -p 8080:80 -v $PWD/index.html:/srv/caddy/index.html -v $PWD/Caddyfile:/etc/caddy/Caddyfile --name ex-caddy caddy:alpine

docker build -t local-caddy:latest .


docker build -t zhouyuanzhen.jfrog.io/registry/caddydemo:latest .

docker login zhouyuanzhen.jfrog.io

docker push zhouyuanzhen.jfrog.io/registry/caddydemo:latest

docker run --rm -p 8080:80 --name localcaddy local-caddy

```
