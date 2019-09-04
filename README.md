# Jenkins JNLP slave with Docker client.

Jenkins JNLP slave image with docker client installed.
Can be used with Jenkins Kubernetes plugin for building slaves from Dockerfile using dind

Docker server can be connected using DOCKER_HOST
```sh
docker run -e DOCKER_HOST=dind ...
```
or Docker socket
```sh
docker run -v /var/run/docker.sock:/var/run/docker.sock ...
```