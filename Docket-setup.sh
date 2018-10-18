
#install curl
sudo apt install curl

#get and install docker latest release
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

#give root acess to user
sudo usermod -aG docker $USER

#install docker-machine
base=https://github.com/docker/machine/releases/download/v0.14.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine

#install docker-compose
sudo -i
curl -L https://github.com/docker/compose/releases/download/1.23.0-rc3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
exit

#install git
sudo apt install git
