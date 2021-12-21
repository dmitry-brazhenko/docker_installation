# https://docs.docker.com/engine/install/ubuntu/
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | (sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg --batch --yes)
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt-get update
sudo yes | apt-get install docker-ce docker-ce-cli containerd.io

#https://docs.docker.com/engine/install/linux-postinstall/
sudo groupadd docker

su -s ${USER}

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo systemctl restart docker.service
sudo usermod -a -G docker $USER
newgrp docker
