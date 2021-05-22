# Containerized [Code Server](https://github.com/cdr/code-server)

Easy installation configuration of [code-server](https://github.com/cdr/code-server) using docker

https://hub.docker.com/r/rahulreghunath/code-server-clone

## Usage

### docker-compose (recomented)
```
version: '3'

services:
  server:
    image: rahulreghunath/code-server-clone
    volumes:
      - ./config.yaml:/root/.config/code-server/config.yaml
    ports:
      - "8080:8080"
```
### docker cli
```
docker run -d \
  --name=code-server \
  -p 8081:8080 \
  -v $PWD/config.yaml:/root/.config/code-server/config.yaml \
  rahulreghunath/code-server-clone

```


#### sample config.yaml
```
bind-addr: 0.0.0.0:8080
auth: password
password: your-password
cert: false
```
