#!/bin/bash

. ../utils/bash_color.sh

if [ -z "`docker-compose --verison`" ]; then
  echo "this that"
fi

echo -e "${GREEN}[1/2] Downloading docker-compose${NC}"
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose \
  && sudo chmod +x /usr/local/bin/docker-compose \
  && echo -e "${GREEN}[2/2] Creating shortcut${NC}" \
  && sudo rm /usr/bin/docker-compose
  && sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose \
    && echo -e "${GREEN}Done!\n$(docker-compose -v)${NC}"
