# Building and running a docker-registry

```bash
$ git submodule init && git submodule update
$ vagrant up
# This will also bootstrap docker and build the docker-registry image specified in Dockerfile
$ vagrant ssh
vagrant$ cd /vagrant
vagrant$ CONTAINER_ID=$(docker run docker-registry)
vagrant$ PORT=$(docker port $CONTAINER_ID 5000)
vagrant$ docker tag docker-registry localhost.localdomain:$PORT/ubuntu
vagrant$ docker push localhost.localdomain:$PORT/ubuntu
```

This is where things go wrong: I always get the following reply from my
registry: `"error": "Checksum mismatch, ignoring the layer"`
