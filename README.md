# Ubuntu Docker Container Setup
This is a shell script and other useful tools for a new Ubuntu docker container.
This will add the follow
- Vim
  - Vundle
  - Golang Plugin
- Wget
- Git
- Golang Environment 

# How to use:
cd src/
./setup.sh

# Docker How to

## Running:
docker run --name ubuntu -e HOST_IP=YOUR_HOST_IP -v //SHARDED_DIRVE:/src -t -i ubuntu /bin/bash

Example:
docker run --name ubuntu -e HOST_IP=192.168.56.1 -v //c/DockerDrives/ubuntuOS:/src -t -i ubuntu /bin/bash

## Getting into a stoped session:
docker start ubuntu
docker attach ubuntu

## Delete The Container
docker rm -f ubuntu

## Issues:

### Go can not be found
Rerun the go commands:
export GOROOT=/usr/local/go
mkdir $HOME/Projects/
export GOPATH=$HOME/Projects
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

### Windows Line Endings:
run this command:
sed -i -e 's/\r$//' setup.sh
