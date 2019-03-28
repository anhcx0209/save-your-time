#!/bin/bash
. ../utils/bash_color.sh

echo -e "${GREEN}[1/4] Removing old docker${NC}"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update

echo -e "${GREEN}[[2/4] Installing dependencies packages${NC}"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
echo -e "${GREEN}[[3/4] Adding apt repository${NC}"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
echo -e "${GREEN}[4/4] Installing docker-ce${NC}"
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo -e "${GREEN}Done!\nUse docker -v to verify your docker!${NC}"
