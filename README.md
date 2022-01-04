# One line install Docker and docker-compose on Ubuntu

Run this bash command:
```shell
sudo sh<  <(curl -s https://raw.githubusercontent.com/dmitry-brazhenko/docker_installation/main/run.sh) && newgrp docker
```

You may need to reboot you machine once installation completed
```shell
sudo reboot
```

Run hello-world

```shell
docker run hello-world
```
